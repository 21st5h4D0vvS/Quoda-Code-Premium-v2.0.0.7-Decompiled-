.class public Lcom/henrythompson/quoda/filesystem/GoogleDrive;
.super Lcom/henrythompson/quoda/filesystem/CloudService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;,
        Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;,
        Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;
    }
.end annotation


# static fields
.field public static final GOOGLE_DRIVE_UUID:Ljava/lang/String; = "google_drive"

.field public static final MIME_FOLDER:Ljava/lang/String; = "application/vnd.google-apps.folder"

.field public static final MIME_GOOGLE_APPS_SCRIPT:Ljava/lang/String; = "application/vnd.google-apps.script"

.field private static mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

.field private static mService:Lcom/google/api/services/drive/Drive;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x5

    const-string v0, "google_drive"

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/filesystem/CloudService;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "https://www.googleapis.com/auth/drive"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "https://www.googleapis.com/auth/drive.scripts"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->usingOAuth2(Landroid/content/Context;Ljava/util/Collection;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    move-result-object v0

    sput-object v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    const/4 v4, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->retrieveData()V

    const/4 v4, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    nop

    return-void

    const/4 v4, 0x5
.end method

.method static synthetic access$000()Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    sget-object v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    return-object v0

    const/4 v1, 0x4
.end method

.method static synthetic access$100(Lcom/henrythompson/quoda/filesystem/GoogleDrive;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->setService()V

    nop

    return-void

    const/4 v0, 0x2
.end method

.method static synthetic access$300()Lcom/google/api/services/drive/Drive;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    sget-object v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    return-object v0

    const/4 v0, 0x4
.end method

.method static synthetic access$600(Lcom/henrythompson/quoda/filesystem/GoogleDrive;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x7

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->saveAccountName(Ljava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x2
.end method

.method private addFileToJson(Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/henrythompson/quoda/utils/Utils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getType()Ljava/lang/String;

    move-result-object v13

    new-instance v10, Lcom/google/gson/JsonObject;

    invoke-direct {v10}, Lcom/google/gson/JsonObject;-><init>()V

    new-instance v11, Lcom/google/gson/JsonArray;

    invoke-direct {v11}, Lcom/google/gson/JsonArray;-><init>()V

    const-string v14, "files"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    check-cast v12, Lcom/google/gson/JsonArray;

    const-string v14, "files"

    invoke-virtual {v10, v14, v11}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const/4 v3, 0x0

    invoke-virtual {v12}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v15, "id"

    invoke-virtual {v2, v15}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_0

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    const-string v15, "id"

    invoke-virtual {v9, v15, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "name"

    invoke-virtual {v9, v15, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "type"

    invoke-virtual {v9, v15, v13}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "source"

    move-object/from16 v0, p3

    invoke-virtual {v9, v15, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v11, v9}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_0

    const/4 v5, 0x5

    :cond_0
    const-string v15, "id"

    const-string v16, "id"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "name"

    const-string v16, "name"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "type"

    const-string v16, "type"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v15, "source"

    const-string v16, "source"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    const/4 v2, 0x7

    :cond_1
    if-nez v3, :cond_2

    new-instance v7, Lcom/google/gson/JsonObject;

    invoke-direct {v7}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v14, "name"

    invoke-virtual {v7, v14, v8}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "type"

    invoke-virtual {v7, v14, v13}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "source"

    move-object/from16 v0, p3

    invoke-virtual {v7, v14, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const/4 v3, 0x1

    :cond_2
    new-instance v14, Lcom/google/gson/GsonBuilder;

    invoke-direct {v14}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/google/gson/GsonBuilder;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/google/gson/Gson;->toJson(Lcom/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v14

    return-object v14

    const/4 v12, 0x4
.end method

.method private applySelectedAccountName(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x6

    sget-object v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-virtual {v0, p1}, Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;->setSelectedAccountName(Ljava/lang/String;)Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->setService()V

    const/4 v1, 0x7

    :goto_0
    nop

    return-void

    const/4 v0, 0x3

    const/4 v1, 0x0

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    goto :goto_0

    const/4 v0, 0x3
.end method

.method private createNewAppsScriptFile(Ljava/util/ArrayList;Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ">;",
            "Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;,
            Lcom/henrythompson/quoda/filesystem/FilesystemException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v8, 0x3

    if-eqz p4, :cond_0

    const/4 v8, 0x7

    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v5, "New folders cannot be created in Google Apps Script projects"

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v7, 0x7f0d00be

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4

    const/4 v8, 0x7

    :cond_0
    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->exportAppsScriptProject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    const/4 v8, 0x7

    const-string v4, ".html"

    invoke-virtual {p3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v8, 0x2

    const-string v3, "html"

    const/4 v8, 0x0

    :goto_0
    new-instance v1, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;

    const/4 v4, 0x0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5, v3}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x5

    invoke-virtual {v1, p3}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->setName(Ljava/lang/String;)V

    const/4 v8, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getFilepath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->setFilepath(Ljava/lang/String;)V

    const/4 v8, 0x4

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->setSize(J)V

    const/4 v8, 0x2

    const-string v4, ""

    invoke-direct {p0, v1, v0, v4}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->addFileToJson(Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->sendJsonToServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v8, 0x7

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 v8, 0x5

    invoke-virtual {p0, p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->listFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v8, 0x3

    nop

    return-void

    const/4 v5, 0x1

    const/4 v8, 0x1

    :cond_1
    const-string v4, ".gs"

    invoke-virtual {p3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v8, 0x3

    const-string v3, "server_js"

    goto :goto_0

    const/4 v5, 0x0

    const/4 v8, 0x3

    :cond_2
    new-instance v4, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v5, "Unable to create new Google Apps Script project file as file extension was not supported"

    iget-object v6, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v7, 0x7f0d0103

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v4
.end method

.method private createNewNormalFile(Ljava/util/ArrayList;Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;Ljava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ">;",
            "Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;,
            Lcom/henrythompson/quoda/filesystem/FilesystemException;
        }
    .end annotation

    const/4 v9, 0x7

    const/4 v9, 0x6

    new-instance v2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    const-string v5, ""

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, p4, v5, v6}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getFilepath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setFilepath(Ljava/lang/String;)V

    const/4 v9, 0x4

    invoke-virtual {v2, p3}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setName(Ljava/lang/String;)V

    const/4 v9, 0x1

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setSize(J)V

    const/4 v9, 0x7

    new-instance v1, Lcom/google/api/services/drive/model/File;

    invoke-direct {v1}, Lcom/google/api/services/drive/model/File;-><init>()V

    const/4 v9, 0x5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x1

    new-instance v5, Lcom/google/api/services/drive/model/ParentReference;

    invoke-direct {v5}, Lcom/google/api/services/drive/model/ParentReference;-><init>()V

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getParentId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/api/services/drive/model/ParentReference;->setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/ParentReference;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x6

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/api/services/drive/model/File;->setTitle(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    const/4 v9, 0x6

    invoke-virtual {v1, v3}, Lcom/google/api/services/drive/model/File;->setParents(Ljava/util/List;)Lcom/google/api/services/drive/model/File;

    const/4 v9, 0x0

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getMimeType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v9, 0x3

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/api/services/drive/model/File;->setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    const/4 v9, 0x0

    :cond_0
    :try_start_0
    sget-object v5, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v5}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/google/api/services/drive/Drive$Files;->insert(Lcom/google/api/services/drive/model/File;)Lcom/google/api/services/drive/Drive$Files$Insert;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/api/services/drive/Drive$Files$Insert;->execute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/drive/model/File;

    const/4 v9, 0x7

    if-nez v4, :cond_1

    const/4 v9, 0x7

    new-instance v5, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v6, "Unable to create new Google Drive file or folder - service returned false"

    iget-object v7, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v8, 0x7f0d00f1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v9, 0x5

    :catch_0
    move-exception v0

    const/4 v9, 0x7

    new-instance v5, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    invoke-direct {v5, p0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v5

    const/4 v9, 0x3

    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setId(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v9, 0x2

    :goto_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v9, 0x0

    nop

    return-void

    const/4 v5, 0x4

    const/4 v9, 0x5

    :catch_1
    move-exception v0

    const/4 v9, 0x6

    const-string v5, "GoogleDriveEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create new file or dir because of IOException with message: "

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

    const/4 v0, 0x3

    const/4 v9, 0x1

    :catch_2
    move-exception v0

    const/4 v9, 0x2

    const-string v5, "GoogleDriveEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to create new file or dir because of Unknown Exception with message: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    const/4 v0, 0x3
.end method

.method private exportAppsScriptProject(Ljava/lang/String;)Lcom/google/gson/JsonObject;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;
        }
    .end annotation

    const/4 v12, 0x6

    const/4 v4, 0x0

    const/4 v12, 0x7

    :try_start_0
    sget-object v8, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v8}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/google/api/services/drive/Drive$Files;->get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/api/services/drive/Drive$Files$Get;->execute()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/services/drive/model/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v12, 0x7

    invoke-virtual {v5}, Lcom/google/api/services/drive/model/File;->getExportLinks()Ljava/util/Map;

    move-result-object v3

    const/4 v12, 0x7

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v8

    if-lez v8, :cond_0

    const/4 v12, 0x7

    const-string v8, "application/vnd.google-apps.script+json"

    invoke-interface {v3, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v12, 0x2

    if-nez v2, :cond_1

    const/4 v12, 0x4

    new-instance v8, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v9, "Unable to open Google Apps Script project as no suitable JSON export link was found"

    iget-object v10, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v11, 0x7f0d024b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8

    const/4 v12, 0x1

    :catch_0
    move-exception v1

    const/4 v12, 0x0

    :cond_0
    :goto_0
    return-object v4

    const/4 v1, 0x2

    const/4 v12, 0x5

    :cond_1
    :try_start_1
    sget-object v8, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    const/4 v12, 0x1

    invoke-virtual {v8}, Lcom/google/api/services/drive/Drive;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v8

    new-instance v9, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v9, v2}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/google/api/client/http/HttpRequestFactory;->buildGetRequest(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v8

    const/4 v12, 0x5

    invoke-virtual {v8}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v6

    const/4 v12, 0x7

    invoke-virtual {v6}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v8

    invoke-static {v8}, Lcom/henrythompson/quoda/utils/Utils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    const/4 v12, 0x0

    new-instance v8, Lcom/google/gson/JsonParser;

    invoke-direct {v8}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v8, v7}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonObject;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v12, 0x5

    goto :goto_0

    const/4 v2, 0x5

    const/4 v12, 0x0

    :catch_1
    move-exception v0

    const/4 v12, 0x1

    new-instance v8, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to export AppsScriptProject due to IOException with message: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0247

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v8
.end method

.method private getAppsScriptProjectFolder(Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;)Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v10, 0x6

    const/4 v8, 0x0

    const/4 v10, 0x4

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getParentId()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x7

    :try_start_0
    sget-object v6, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v6}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/google/api/services/drive/Drive$Files;->get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v10, 0x7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/api/services/drive/Drive$Files$Get;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object v6

    const/4 v10, 0x5

    invoke-virtual {v6}, Lcom/google/api/services/drive/Drive$Files$Get;->execute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/drive/model/File;
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v10, 0x4

    const/4 v5, 0x0

    const/4 v10, 0x1

    invoke-virtual {v1}, Lcom/google/api/services/drive/model/File;->getParents()Ljava/util/List;

    move-result-object v4

    const/4 v10, 0x5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v10, 0x3

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/api/services/drive/model/ParentReference;

    invoke-virtual {v6}, Lcom/google/api/services/drive/model/ParentReference;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x7

    :goto_0
    new-instance v2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    invoke-direct {v2, v8, v3, v5}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x1

    new-instance v6, Ljava/io/File;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getFilepath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setFilepath(Ljava/lang/String;)V

    const/4 v10, 0x4

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setIsContainerFile(Z)V

    const/4 v10, 0x6

    const-string v6, "application/vnd.google-apps.script"

    invoke-virtual {v2, v6}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setMimeType(Ljava/lang/String;)V

    const/4 v10, 0x2

    return-object v2

    const/4 v1, 0x0

    const/4 v10, 0x1

    :catch_0
    move-exception v0

    const/4 v10, 0x7

    new-instance v6, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    invoke-direct {v6, p0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v6

    const/4 v10, 0x7

    :catch_1
    move-exception v0

    const/4 v10, 0x2

    new-instance v6, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get parent folder because of Exception when executing get with message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0248

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    const/4 v10, 0x2

    :cond_0
    const-string v5, "root"

    goto :goto_0

    const/4 v10, 0x0
.end method

.method private getAppsScriptSourceSizeInBytes(Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x0

    :try_start_0
    const-string v1, "utf-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v1, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x5

    :goto_0
    return v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    :catch_0
    move-exception v0

    const/4 v2, 0x1

    const/4 v1, 0x0

    goto :goto_0

    const/4 v2, 0x1
.end method

.method private getNormalParentFolder(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;)Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getFilepath()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v13

    const-string v14, "root"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v3, 0x0

    const/4 v7, 0x0

    :goto_0
    if-eqz v3, :cond_0

    if-eqz v7, :cond_0

    const-string v13, "root"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    :try_start_0
    sget-object v13, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v13}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/google/api/services/drive/Drive$Files;->get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/api/services/drive/Drive$Files$Get;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/api/services/drive/Drive$Files$Get;->execute()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/api/services/drive/model/File;

    invoke-virtual {v5}, Lcom/google/api/services/drive/model/File;->getParents()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_0

    const/4 v13, 0x0

    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/api/services/drive/model/ParentReference;

    invoke-virtual {v13}, Lcom/google/api/services/drive/model/ParentReference;->getId()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v10

    :cond_0
    new-instance v5, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    const/4 v13, 0x1

    invoke-direct {v5, v13, v7, v10}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setFilepath(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setName(Ljava/lang/String;)V

    return-object v5

    const/4 v1, 0x7

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getParentId()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getParentId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getParentId()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    const/4 v13, 0x1

    :cond_2
    :try_start_1
    sget-object v13, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v13}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/google/api/services/drive/Drive$Files;->get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/api/services/drive/Drive$Files$Get;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/api/services/drive/Drive$Files$Get;->execute()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/api/services/drive/model/File;
    :try_end_1
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {v2}, Lcom/google/api/services/drive/model/File;->getParents()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_3

    const/4 v13, 0x0

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/api/services/drive/model/ParentReference;

    invoke-virtual {v13}, Lcom/google/api/services/drive/model/ParentReference;->getId()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    const/4 v11, 0x4

    :catch_0
    move-exception v1

    new-instance v13, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v13

    :catch_1
    move-exception v1

    new-instance v13, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to get parent folder because of Exception when executing get with message: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v16, 0x7f0d0248

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v13

    :cond_3
    const/4 v7, 0x0

    const/4 v3, 0x0

    goto/16 :goto_0

    const/4 v1, 0x3

    :catch_2
    move-exception v1

    new-instance v13, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v13

    :catch_3
    move-exception v1

    new-instance v13, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to get parent folder because of Exception when executing get with message: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v16, 0x7f0d0248

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v13
.end method

.method private getScriptType(Lcom/henrythompson/quoda/document/Document;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v1, 0x3

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->getScriptType(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x3
.end method

.method private getScriptType(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v5, 0x4

    invoke-direct {p0, p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->getScriptTypeForName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x4

    if-nez v0, :cond_0

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->getScriptTypeForDocument(Lcom/henrythompson/quoda/document/Document;)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x7

    :cond_0
    if-nez v0, :cond_1

    const/4 v5, 0x1

    new-instance v1, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v2, "Unable to get type for a Google Apps Script file"

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v4, 0x7f0d018d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    const/4 v5, 0x3

    :cond_1
    return-object v0

    const/4 v1, 0x0
.end method

.method private getScriptTypeForDocument(Lcom/henrythompson/quoda/document/Document;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x3

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    const-string v1, "javascript"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    const-string v1, "server_js"

    const/4 v2, 0x6

    :goto_0
    return-object v1

    const/4 v1, 0x7

    const/4 v2, 0x0

    :cond_0
    const-string v1, "html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    const-string v1, "html"

    goto :goto_0

    const/4 v1, 0x0

    const/4 v2, 0x7

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    const/4 v2, 0x7
.end method

.method private getScriptTypeForName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    const-string v0, ".htm"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".html"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    :cond_0
    const-string v0, "html"

    const/4 v1, 0x1

    :goto_0
    return-object v0

    const/4 v0, 0x7

    const/4 v1, 0x2

    :cond_1
    const-string v0, ".gs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ".js"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x6

    :cond_2
    const-string v0, "server_js"

    goto :goto_0

    const/4 v1, 0x6

    const/4 v1, 0x5

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x2
.end method

.method private listAppsScriptsProject(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->exportAppsScriptProject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v10

    const-string v11, "files"

    invoke-virtual {v10, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonArray;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    const-string v11, "id"

    invoke-virtual {v7, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "name"

    invoke-virtual {v7, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    const-string v11, "type"

    invoke-virtual {v7, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v9

    const-string v11, "source"

    invoke-virtual {v7, v11}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "server_js"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".gs"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_0
    :goto_1
    new-instance v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;

    invoke-direct {v0, v3, v5, v9}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v8}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->getAppsScriptSourceSizeInBytes(Ljava/lang/String;)I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v0, v12, v13}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->setSize(J)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getFilepath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->setFilepath(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    const/4 v10, 0x5

    :cond_1
    const-string v11, "html"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".html"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    const/4 v11, 0x5

    :cond_2
    return-object v4

    const/4 v7, 0x5
.end method

.method private listNormalFolder(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;,
            Lcom/henrythompson/quoda/filesystem/FilesystemException;
        }
    .end annotation

    const/4 v13, 0x5

    const v12, 0x7f0d00f5

    const/4 v13, 0x4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x3

    :try_start_0
    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v13, 0x5

    sget-object v9, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v9}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v9

    const/4 v13, 0x5

    invoke-virtual {v9}, Lcom/google/api/services/drive/Drive$Files;->list()Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v13, 0x5

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/google/api/services/drive/Drive$Files$List;->setPrettyPrint(Ljava/lang/Boolean;)Lcom/google/api/services/drive/Drive$Files$List;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\' in parents and trashed = false"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x0

    invoke-virtual {v9, v10}, Lcom/google/api/services/drive/Drive$Files$List;->setQ(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    const/4 v13, 0x4

    :cond_0
    :try_start_1
    invoke-virtual {v7}, Lcom/google/api/services/drive/Drive$Files$List;->execute()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/services/drive/model/FileList;

    const/4 v13, 0x1

    invoke-virtual {v3}, Lcom/google/api/services/drive/model/FileList;->getItems()Ljava/util/List;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v13, 0x2

    invoke-virtual {v3}, Lcom/google/api/services/drive/model/FileList;->getNextPageToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/api/services/drive/Drive$Files$List;->setPageToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;
    :try_end_1
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v13, 0x7

    invoke-virtual {v7}, Lcom/google/api/services/drive/Drive$Files$List;->getPageToken()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    const/4 v13, 0x2

    invoke-virtual {v7}, Lcom/google/api/services/drive/Drive$Files$List;->getPageToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-gtz v9, :cond_0

    const/4 v13, 0x4

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x2

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/api/services/drive/model/File;

    const/4 v13, 0x4

    const-string v10, "application/vnd.google-apps.folder"

    invoke-virtual {v1}, Lcom/google/api/services/drive/model/File;->getMimeType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v13, 0x2

    new-instance v2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    invoke-virtual {v1}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v5, v10, v11}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getFilepath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/google/api/services/drive/model/File;->getTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setFilepath(Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v1}, Lcom/google/api/services/drive/model/File;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setName(Ljava/lang/String;)V

    const/4 v13, 0x6

    invoke-virtual {v1}, Lcom/google/api/services/drive/model/File;->getFileSize()Ljava/lang/Long;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v1}, Lcom/google/api/services/drive/model/File;->getFileSize()Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    :goto_1
    invoke-virtual {v2, v10, v11}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setSize(J)V

    const/4 v13, 0x7

    invoke-virtual {v1}, Lcom/google/api/services/drive/model/File;->getMimeType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setMimeType(Ljava/lang/String;)V

    const/4 v13, 0x3

    const-string v10, "application/vnd.google-apps.script"

    invoke-virtual {v1}, Lcom/google/api/services/drive/model/File;->getMimeType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v13, 0x6

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setIsContainerFile(Z)V

    const/4 v13, 0x7

    :cond_2
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v6, 0x0

    const/4 v13, 0x5

    :catch_0
    move-exception v0

    const/4 v13, 0x1

    new-instance v9, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    invoke-direct {v9, p0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v9

    const/4 v13, 0x0

    :catch_1
    move-exception v0

    const/4 v13, 0x7

    new-instance v9, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to list folder because of Exception when executing list with message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    const/4 v13, 0x6

    :catch_2
    move-exception v0

    const/4 v13, 0x7

    new-instance v9, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    invoke-direct {v9, p0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v9

    const/4 v13, 0x3

    :catch_3
    move-exception v0

    const/4 v13, 0x4

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Lcom/google/api/services/drive/Drive$Files$List;->setPageToken(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$List;

    const/4 v13, 0x1

    new-instance v9, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to list folder because of IOException when looping through page tokens with message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v9

    const/4 v13, 0x3

    :cond_3
    const-wide/16 v10, 0x0

    goto/16 :goto_1

    const/4 v5, 0x0

    const/4 v13, 0x7

    :cond_4
    return-object v6

    const/4 v5, 0x3
.end method

.method private openAppsScriptFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;
        }
    .end annotation

    new-instance v9, Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-direct {v9}, Lcom/henrythompson/quoda/document/LinesCollection;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getParentId()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->exportAppsScriptProject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v12, "files"

    invoke-virtual {v6, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonArray;

    invoke-virtual {v7}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    const-string v13, "id"

    invoke-virtual {v2, v13}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v12, "source"

    invoke-virtual {v2, v12}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v10

    :cond_1
    if-nez v10, :cond_2

    new-instance v12, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v13, "Unable to open Google Apps Script file as the source is null"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v15, 0x7f0d0240

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v12

    :cond_2
    const/4 v8, 0x1

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v4, v12, :cond_4

    invoke-virtual {v10, v4}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0xa

    if-ne v12, v13, :cond_3

    add-int/lit8 v12, v4, 0x1

    invoke-virtual {v9, v8, v12}, Lcom/henrythompson/quoda/document/LinesCollection;->add(II)Lcom/henrythompson/quoda/document/LineObject;

    add-int/lit8 v8, v8, 0x1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    const/4 v4, 0x1

    :cond_4
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v12}, Lcom/henrythompson/quoda/document/Document;->setText(Ljava/lang/String;I)V

    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/henrythompson/quoda/document/Document;->setLineDelimStyle(I)V

    invoke-virtual/range {p1 .. p2}, Lcom/henrythompson/quoda/document/Document;->setFileObject(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Lcom/henrythompson/quoda/document/Document;->setLineStartsList(Lcom/henrythompson/quoda/document/LinesCollection;)V

    const-string v12, "utf-8"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/henrythompson/quoda/document/Document;->setEncoding(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/henrythompson/quoda/document/Document;->setFileName(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/henrythompson/quoda/document/Document;->setFileName(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getType()Ljava/lang/String;

    move-result-object v11

    const-string v12, "html"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v12

    const-string v13, "html"

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    :cond_5
    :goto_1
    const/4 v12, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/henrythompson/quoda/document/Document;->setIsSaved(Z)V

    nop

    return-void

    const/4 v6, 0x1

    :cond_6
    const-string v12, "server_js"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v12

    const-string v13, "javascript"

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto :goto_1

    const/4 v7, 0x3
.end method

.method private openNormalFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;Ljava/lang/String;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;
        }
    .end annotation

    new-instance v4, Lcom/google/api/services/drive/model/File;

    invoke-direct {v4}, Lcom/google/api/services/drive/model/File;-><init>()V

    :try_start_0
    sget-object v13, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v13}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/google/api/services/drive/Drive$Files;->get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/api/services/drive/Drive$Files$Get;->execute()Ljava/lang/Object;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Lcom/google/api/services/drive/model/File;

    move-object v4, v0

    sget-object v13, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v13}, Lcom/google/api/services/drive/Drive;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v13

    new-instance v14, Lcom/google/api/client/http/GenericUrl;

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getDownloadUrl()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Lcom/google/api/client/http/HttpRequestFactory;->buildGetRequest(Lcom/google/api/client/http/GenericUrl;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v12

    :try_start_1
    invoke-virtual {v12}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    const/16 v13, 0x400

    new-array v2, v13, [B

    :goto_0
    :try_start_4
    invoke-virtual {v5, v2}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_1

    const/4 v13, 0x0

    invoke-virtual {v10, v2, v13, v11}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    const/4 v13, 0x1

    :catch_0
    move-exception v3

    new-instance v13, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to open Google Drive file due to IOException when reading inputstream to file via outputstream with message: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v16, 0x7f0d024c

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v13

    :catch_1
    move-exception v3

    new-instance v13, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to open Google Drive file as getting HttpResponse threw an IO Exception with message: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v16, 0x7f0d024c

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v13

    :catch_2
    move-exception v3

    new-instance v13, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to open Google Drive file as opening an input stream from the HttpResponse\'s contents threw an IOException with message: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v16, 0x7f0d024c

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v13

    :catch_3
    move-exception v3

    new-instance v13, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to create new local file when downloading Google Drive file due to IOException with message: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v16, 0x7f0d024c

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v13

    :catch_4
    move-exception v3

    new-instance v13, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Unable to open file from Google Drive due to FileNotFoundException when opening OutputStream to temporary local file copy with message: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v16, 0x7f0d024c

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v13

    :cond_1
    :try_start_5
    invoke-virtual {v10}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_1
    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v13

    const-string v14, "local"

    invoke-virtual {v13, v14}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v8

    check-cast v8, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;

    new-instance v9, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v13, 0x0

    const-string v14, "local"

    invoke-direct {v9, v13, v14}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    :try_start_6
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v8, v0, v9, v1}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->openFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    :try_end_6
    .catch Lcom/henrythompson/quoda/filesystem/FilesystemException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lcom/henrythompson/quoda/filesystem/AuthNeededException; {:try_start_6 .. :try_end_6} :catch_7

    invoke-virtual/range {p1 .. p2}, Lcom/henrythompson/quoda/document/Document;->setFileObject(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/henrythompson/quoda/document/Document;->setIsSaved(Z)V

    nop

    return-void

    const/4 v12, 0x4

    :catch_5
    move-exception v3

    const-string v13, "GoogleDrive"

    const-string v14, "IOException when flushing or closing an InputStream or OutputStream when opening file"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    const/4 v0, 0x5

    :catch_6
    move-exception v3

    new-instance v13, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/FilesystemException;->getMessage()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v16, 0x7f0d024c

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v13

    :catch_7
    move-exception v3

    new-instance v13, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;->getMessage()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v16, 0x7f0d024c

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v13
.end method

.method private retrieveData()V
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x3

    const-string v2, "gdrive"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v4, 0x3

    const-string v2, "account_name"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->applySelectedAccountName(Ljava/lang/String;)V

    const/4 v4, 0x3

    nop

    return-void

    const/4 v4, 0x2
.end method

.method private saveAccountName(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v5, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v5, 0x0

    const-string v3, "gdrive"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v5, 0x0

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v5, 0x7

    const-string v3, "account_name"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v5, 0x3

    nop

    return-void

    const/4 v3, 0x7
.end method

.method private saveAppsScriptFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v10, 0x0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getParentId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->exportAppsScriptProject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    const/4 v10, 0x6

    invoke-virtual {p1, p2}, Lcom/henrythompson/quoda/document/Document;->setFileObject(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v10, 0x7

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->getScriptType(Lcom/henrythompson/quoda/document/Document;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/henrythompson/quoda/utils/Utils;->removeExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v10, 0x5

    const-string v8, "html"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v10, 0x2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".html"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/henrythompson/quoda/document/Document;->setFileName(Ljava/lang/String;)V

    const/4 v10, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v8

    const-string v9, "html"

    invoke-virtual {v8, v9}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    const/4 v10, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p2, v7}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->setType(Ljava/lang/String;)V

    const/4 v10, 0x4

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p2, v2, v8}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->addFileToJson(Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getParentId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->sendJsonToServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    const/4 v10, 0x7

    :cond_1
    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->getParentId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->exportAppsScriptProject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v2

    const/4 v10, 0x5

    const-string v8, "files"

    invoke-virtual {v2, v8}, Lcom/google/gson/JsonObject;->getAsJsonArray(Ljava/lang/String;)Lcom/google/gson/JsonArray;

    move-result-object v3

    const/4 v10, 0x5

    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    const/4 v10, 0x4

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const/4 v10, 0x0

    const-string v9, "name"

    invoke-virtual {v1, v9}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v10, 0x6

    const-string v8, "id"

    invoke-virtual {v1, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;->setId(Ljava/lang/String;)V

    const/4 v10, 0x7

    :cond_3
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Lcom/henrythompson/quoda/document/Document;->setBaseURL(Ljava/lang/String;)V

    const/4 v10, 0x0

    const-string v8, "utf-8"

    invoke-virtual {p1, v8}, Lcom/henrythompson/quoda/document/Document;->setEncoding(Ljava/lang/String;)V

    const/4 v10, 0x3

    const/4 v8, 0x1

    invoke-virtual {p1, v8}, Lcom/henrythompson/quoda/document/Document;->setIsSaved(Z)V

    const/4 v10, 0x0

    nop

    return-void

    const/4 v9, 0x7

    const/4 v10, 0x0

    :cond_4
    const-string v8, "server_js"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v10, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".gs"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/henrythompson/quoda/document/Document;->setFileName(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v8

    const-string v9, "javascript"

    invoke-virtual {v8, v9}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v5, 0x6
.end method

.method private saveNormalFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/henrythompson/quoda/Directories;->DIRECTORY_DATA:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v7, Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v12, 0x0

    const-string v13, "local"

    invoke-direct {v7, v12, v13}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v7, v8}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v12

    const-string v13, "local"

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v5

    check-cast v5, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v7}, Lcom/henrythompson/quoda/filesystem/LocalFilesystem;->saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;)V

    invoke-virtual/range {p1 .. p2}, Lcom/henrythompson/quoda/document/Document;->setFileObject(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    :try_start_0
    sget-object v12, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v12}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/api/services/drive/Drive$Files;->get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/api/services/drive/Drive$Files$Get;->execute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/api/services/drive/model/File;
    :try_end_0
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/google/api/services/drive/model/File;->getLabels()Lcom/google/api/services/drive/model/File$Labels;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/api/services/drive/model/File$Labels;->getTrashed()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v1, Lcom/google/api/client/http/FileContent;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9, v12}, Lcom/google/api/client/http/FileContent;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/google/api/services/drive/model/File;->setTitle(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    :try_start_1
    sget-object v12, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v12}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v4, v1}, Lcom/google/api/services/drive/Drive$Files;->update(Ljava/lang/String;Lcom/google/api/services/drive/model/File;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/drive/Drive$Files$Update;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/api/services/drive/Drive$Files$Update;->execute()Ljava/lang/Object;
    :try_end_1
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :goto_0
    nop

    return-void

    const/4 v9, 0x3

    :catch_0
    move-exception v2

    new-instance v12, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v12

    :catch_1
    move-exception v2

    new-instance v12, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to save Google Drive file due to IOException when getting file with message: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v15, 0x7f0d00f9

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v12

    :catch_2
    move-exception v2

    new-instance v12, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v12

    :catch_3
    move-exception v2

    new-instance v12, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to save Google Drive file due to IOException when updating file with message: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v15, 0x7f0d00f9

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v12

    :cond_2
    :try_start_2
    sget-object v12, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v12}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getParentId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/api/services/drive/Drive$Files;->get(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Files$Get;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/api/services/drive/Drive$Files$Get;->execute()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/api/services/drive/model/File;
    :try_end_2
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Lcom/google/api/services/drive/model/File;->getLabels()Lcom/google/api/services/drive/model/File$Labels;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-virtual {v10}, Lcom/google/api/services/drive/model/File;->getLabels()Lcom/google/api/services/drive/model/File$Labels;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/api/services/drive/model/File$Labels;->getTrashed()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_4

    :cond_3
    new-instance v12, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v13, "Unable to upload to Google Drive as the parent folder does not exist"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v15, 0x7f0d024f

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v12

    :catch_4
    move-exception v2

    new-instance v12, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v12

    :catch_5
    move-exception v2

    new-instance v12, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to save Google Drive file due to IOException when getting file with message: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v15, 0x7f0d024e

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v12

    :cond_4
    new-instance v4, Lcom/google/api/services/drive/model/File;

    invoke-direct {v4}, Lcom/google/api/services/drive/model/File;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/google/api/services/drive/model/File;->setTitle(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/google/api/services/drive/model/ParentReference;

    invoke-direct {v12}, Lcom/google/api/services/drive/model/ParentReference;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getParentId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/google/api/services/drive/model/ParentReference;->setId(Ljava/lang/String;)Lcom/google/api/services/drive/model/ParentReference;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v11}, Lcom/google/api/services/drive/model/File;->setParents(Ljava/util/List;)Lcom/google/api/services/drive/model/File;

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/google/api/services/drive/model/File;->setMimeType(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    new-instance v1, Lcom/google/api/client/http/FileContent;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v9, v12}, Lcom/google/api/client/http/FileContent;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-virtual/range {p1 .. p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/google/api/services/drive/model/File;->setTitle(Ljava/lang/String;)Lcom/google/api/services/drive/model/File;

    :try_start_3
    sget-object v12, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v12}, Lcom/google/api/services/drive/Drive;->files()Lcom/google/api/services/drive/Drive$Files;

    move-result-object v12

    invoke-virtual {v12, v4, v1}, Lcom/google/api/services/drive/Drive$Files;->insert(Lcom/google/api/services/drive/model/File;Lcom/google/api/client/http/AbstractInputStreamContent;)Lcom/google/api/services/drive/Drive$Files$Insert;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/api/services/drive/Drive$Files$Insert;->execute()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/api/services/drive/model/File;
    :try_end_3
    .catch Lcom/google/api/client/googleapis/extensions/android/gms/auth/UserRecoverableAuthIOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    invoke-virtual {v3}, Lcom/google/api/services/drive/model/File;->getId()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setId(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Lcom/henrythompson/quoda/document/Document;->setFileObject(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/henrythompson/quoda/language/LanguagesManager;->getFileAssociations()Lcom/henrythompson/quoda/language/FileAssociations;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/henrythompson/quoda/language/FileAssociations;->getLanguageForFilename(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Lcom/henrythompson/quoda/document/Document;->setLanguage(Lcom/henrythompson/quoda/language/Language;)V

    goto/16 :goto_0

    const/4 v2, 0x6

    :catch_6
    move-exception v2

    new-instance v12, Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;-><init>(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    throw v12

    :catch_7
    move-exception v2

    new-instance v12, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unable to save Google Drive file due to IOException when getting inserting with message: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v15, 0x7f0d00f9

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v12
.end method

.method private sendJsonToServer(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v10, 0x2

    const-string v6, "Send to Google Drive"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Sending the following JSON:\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://www.googleapis.com/upload/drive/v2/files/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x7

    :try_start_0
    new-instance v0, Lcom/google/api/client/http/ByteArrayContent;

    const/4 v6, 0x0

    const-string v7, "utf-8"

    invoke-virtual {p2, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v0, v6, v7}, Lcom/google/api/client/http/ByteArrayContent;-><init>(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v10, 0x4

    :try_start_1
    sget-object v6, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    invoke-virtual {v6}, Lcom/google/api/services/drive/Drive;->getRequestFactory()Lcom/google/api/client/http/HttpRequestFactory;

    move-result-object v6

    new-instance v7, Lcom/google/api/client/http/GenericUrl;

    invoke-direct {v7, v5}, Lcom/google/api/client/http/GenericUrl;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7, v0}, Lcom/google/api/client/http/HttpRequestFactory;->buildPutRequest(Lcom/google/api/client/http/GenericUrl;Lcom/google/api/client/http/HttpContent;)Lcom/google/api/client/http/HttpRequest;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->getHeaders()Lcom/google/api/client/http/HttpHeaders;

    move-result-object v6

    const-string v7, "application/vnd.google-apps.script+json"

    invoke-virtual {v6, v7}, Lcom/google/api/client/http/HttpHeaders;->setContentType(Ljava/lang/String;)Lcom/google/api/client/http/HttpHeaders;

    const/4 v10, 0x6

    invoke-virtual {v2}, Lcom/google/api/client/http/HttpRequest;->execute()Lcom/google/api/client/http/HttpResponse;

    move-result-object v3

    const/4 v10, 0x7

    invoke-virtual {v3}, Lcom/google/api/client/http/HttpResponse;->getContent()Ljava/io/InputStream;

    move-result-object v4

    const/4 v10, 0x0

    invoke-static {v4}, Lcom/henrythompson/quoda/utils/Utils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    return-object v6

    const/4 v1, 0x4

    const/4 v10, 0x2

    :catch_0
    move-exception v1

    const/4 v10, 0x1

    new-instance v6, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to save Apps Script File to Google Drive as UnsupportedEncodingException getting bytes for JSON, with message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v9, 0x7f0d00f9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    const/4 v10, 0x0

    :catch_1
    move-exception v1

    const/4 v10, 0x2

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "400 Bad Request"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v10, 0x0

    new-instance v6, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to save Apps Script File to Google Drive as IOException with 400 Bad Request occurred when uploading content, with message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0243

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6

    const/4 v10, 0x2

    :cond_0
    new-instance v6, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to save Apps Script File to Google Drive as IOException occurred when uploading content, with message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v9, 0x7f0d0241

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v6
.end method

.method private setService()V
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x1

    new-instance v0, Lcom/google/api/services/drive/Drive$Builder;

    invoke-static {}, Lcom/google/api/client/extensions/android/http/AndroidHttp;->newCompatibleTransport()Lcom/google/api/client/http/HttpTransport;

    move-result-object v1

    new-instance v2, Lcom/google/api/client/json/gson/GsonFactory;

    invoke-direct {v2}, Lcom/google/api/client/json/gson/GsonFactory;-><init>()V

    sget-object v3, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mCredential:Lcom/google/api/client/googleapis/extensions/android/gms/auth/GoogleAccountCredential;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/api/services/drive/Drive$Builder;-><init>(Lcom/google/api/client/http/HttpTransport;Lcom/google/api/client/json/JsonFactory;Lcom/google/api/client/http/HttpRequestInitializer;)V

    const-string v1, "Quoda"

    invoke-virtual {v0, v1}, Lcom/google/api/services/drive/Drive$Builder;->setApplicationName(Ljava/lang/String;)Lcom/google/api/services/drive/Drive$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/drive/Drive$Builder;->build()Lcom/google/api/services/drive/Drive;

    move-result-object v0

    sput-object v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    const/4 v4, 0x2

    nop

    return-void

    const/4 v2, 0x5
.end method


# virtual methods
.method public accountLinked()Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    sget-object v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v1, 0x2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x1
.end method

.method public authorise(Lcom/henrythompson/quoda/IAuthHandlingActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Lcom/henrythompson/quoda/IAuthHandlingActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v5, 0x3

    const/4 v5, 0x6

    instance-of v3, p1, Landroid/app/Activity;

    if-nez v3, :cond_0

    const/4 v5, 0x3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Provided activity not an instance of Activity"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v0, p1

    const/4 v5, 0x7

    check-cast v0, Landroid/app/Activity;

    const/4 v5, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->isNewOrOldPremiumSubscriber()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v5, 0x0

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/henrythompson/quoda/UpgradeActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v5, 0x6

    const-string v3, "trigger"

    const-string v4, "google_drive"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v5, 0x3

    if-eqz p3, :cond_1

    const/4 v5, 0x4

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    const/4 v5, 0x2

    :cond_1
    :goto_0
    nop

    return-void

    const/4 v2, 0x6

    const/4 v5, 0x2

    :cond_2
    new-instance v1, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;-><init>(Lcom/henrythompson/quoda/filesystem/GoogleDrive;Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v5, 0x5

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GDriveAuthActivityHandler;->beginAuthorisation()V

    const/4 v5, 0x6

    invoke-interface {p1, v1}, Lcom/henrythompson/quoda/IAuthHandlingActivity;->setAuthHandler(Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;)V

    goto :goto_0

    const/4 v1, 0x4
.end method

.method public canFilesWithSameNameExistInFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x2

    instance-of v2, p1, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    if-eqz v2, :cond_0

    move-object v0, p1

    const/4 v4, 0x4

    check-cast v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    const/4 v4, 0x5

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "application/vnd.google-apps.script"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x2

    :cond_0
    :goto_0
    return v1

    const/4 v1, 0x3

    const/4 v4, 0x4

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    const/4 v4, 0x4
.end method

.method public createNewFile(Ljava/util/ArrayList;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ">;",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v5, 0x4

    const/4 v5, 0x7

    instance-of v1, p2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    if-nez v1, :cond_0

    const/4 v5, 0x1

    new-instance v1, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v2, "Cannot create new Google Drive file as the location passed was not an instance of a Google Drive File Object"

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v4, 0x7f0d00f0

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p2

    const/4 v5, 0x2

    check-cast v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    const/4 v5, 0x5

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/vnd.google-apps.folder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v5, 0x7

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->createNewNormalFile(Ljava/util/ArrayList;Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;Ljava/lang/String;Z)V

    const/4 v5, 0x3

    :goto_0
    nop

    return-void

    const/4 v4, 0x0

    const/4 v5, 0x7

    :cond_1
    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/vnd.google-apps.script"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x7

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->createNewAppsScriptFile(Ljava/util/ArrayList;Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;Ljava/lang/String;Z)V

    goto :goto_0

    const/4 v4, 0x7

    const/4 v5, 0x2

    :cond_2
    new-instance v1, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v2, "Unable to create new Google Drive file as the location passed did not have a Mimetype of Folder or Apps Script Project"

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0242

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public deleteAccount()V
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v4, 0x7

    const-string v2, "gdrive"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v4, 0x0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v4, 0x2

    const/4 v2, 0x0

    sput-object v2, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mService:Lcom/google/api/services/drive/Drive;

    const/4 v4, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v4, 0x0

    nop

    return-void

    const/4 v2, 0x0
.end method

.method public getDefaultLocation()Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x3

    new-instance v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    const/4 v1, 0x1

    const-string v2, "root"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x4

    const-string v1, "/"

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setFilepath(Ljava/lang/String;)V

    const/4 v4, 0x6

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setName(Ljava/lang/String;)V

    const/4 v4, 0x2

    return-object v0

    const/4 v4, 0x5
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    const-string v0, "Google Drive"

    return-object v0

    const/4 v1, 0x6
.end method

.method public getLastVisitedLocation(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 12

    const/4 v11, 0x5

    const/4 v11, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "gdrive"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const/4 v11, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "defaultpath_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x7

    const-string v8, "/"

    invoke-interface {v7, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "defaultid_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    const-string v8, "root"

    invoke-interface {v7, v1, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "defaultmime_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x5

    const-string v8, "application/vnd.google-apps.folder"

    invoke-interface {v7, v3, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x7

    new-instance v4, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct {v4, v8, v0, v9}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x4

    invoke-virtual {v4, v5}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setFilepath(Ljava/lang/String;)V

    const/4 v11, 0x2

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setName(Ljava/lang/String;)V

    const/4 v11, 0x3

    invoke-virtual {v4, v2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->setMimeType(Ljava/lang/String;)V

    const/4 v11, 0x5

    return-object v4

    const/4 v1, 0x0
.end method

.method public getParentFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v9, 0x6

    const/4 v9, 0x4

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->hasParent()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v9, 0x3

    :goto_0
    return-object v2

    const/4 v4, 0x3

    const/4 v9, 0x5

    :cond_0
    instance-of v2, p1, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    if-nez v2, :cond_1

    instance-of v2, p1, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;

    if-nez v2, :cond_1

    const/4 v9, 0x6

    new-instance v2, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v3, "Unable to get parent folder as the FileObject instance passed was not an instance of GoogleDriveFile"

    iget-object v4, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v5, 0x7f0d0249

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    const/4 v9, 0x7

    :cond_1
    instance-of v2, p1, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    if-eqz v2, :cond_2

    move-object v1, p1

    const/4 v9, 0x2

    check-cast v1, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    const/4 v9, 0x2

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->getNormalParentFolder(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;)Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v2

    goto :goto_0

    const/4 v4, 0x6

    :cond_2
    move-object v0, p1

    const/4 v9, 0x6

    check-cast v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;

    const/4 v9, 0x5

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->getAppsScriptProjectFolder(Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;)Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v2

    goto :goto_0

    const/4 v7, 0x3
.end method

.method public getProtocolPrefix()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x0

    const-string v0, "drive://"

    return-object v0

    const/4 v1, 0x0
.end method

.method public listFolder(Lcom/henrythompson/quoda/filesystem/FileObject;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/FileObject;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v8, 0x4

    instance-of v1, p1, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    if-nez v1, :cond_0

    const/4 v8, 0x4

    new-instance v1, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v2, "Unable to list folder as the FileObject instance passed was not an instance of GoogleDriveFile"

    iget-object v3, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v4, 0x7f0d0249

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    const/4 v8, 0x7

    check-cast v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    const/4 v8, 0x3

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getMimeType()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/vnd.google-apps.script"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v8, 0x1

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->listAppsScriptsProject(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v8, 0x1

    :goto_0
    return-object v1

    const/4 v3, 0x3

    :cond_1
    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->listNormalFolder(Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    const/4 v7, 0x2
.end method

.method public openFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v4, 0x6

    const/4 v4, 0x1

    instance-of v0, p2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;

    if-nez v0, :cond_0

    const/4 v4, 0x4

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v1, "Cannot open Google Drive file as the location passed was not an instance of a Google Drive File Object"

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v3, 0x7f0d024c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    const/4 v4, 0x5

    :cond_0
    instance-of v0, p2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    if-eqz v0, :cond_1

    const/4 v4, 0x4

    check-cast p2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    invoke-direct {p0, p1, p2, p3}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->openNormalFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;Ljava/lang/String;)V

    const/4 v4, 0x2

    :goto_0
    nop

    return-void

    const/4 v1, 0x2

    const/4 v4, 0x1

    :cond_1
    check-cast p2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;

    invoke-direct {p0, p1, p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->openAppsScriptFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;)V

    goto :goto_0

    const/4 v4, 0x4
.end method

.method public requiresInternetConnection()Z
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x2

    const/4 v0, 0x1

    return v0

    const/4 v1, 0x3
.end method

.method public saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v7, 0x4

    instance-of v0, p2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;

    if-nez v0, :cond_0

    const/4 v7, 0x1

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v1, "Unable to save file as the provided destination is not a GoogleDriveFile instance"

    iget-object v2, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v3, 0x7f0d00f9

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    const/4 v7, 0x6

    :cond_0
    instance-of v0, p2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    if-eqz v0, :cond_2

    const/4 v7, 0x6

    check-cast p2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    invoke-direct {p0, p1, p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->saveNormalFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;)V

    const/4 v7, 0x5

    :cond_1
    :goto_0
    nop

    return-void

    const/4 v6, 0x3

    const/4 v7, 0x4

    :cond_2
    instance-of v0, p2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;

    if-eqz v0, :cond_1

    const/4 v7, 0x7

    check-cast p2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;

    invoke-direct {p0, p1, p2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->saveAppsScriptFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;)V

    goto :goto_0

    const/4 v5, 0x3
.end method

.method public saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/henrythompson/quoda/filesystem/FilesystemException;,
            Lcom/henrythompson/quoda/filesystem/AuthNeededException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    instance-of v3, p2, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    if-nez v3, :cond_0

    const/4 v9, 0x2

    new-instance v3, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v4, "Unable to save file as the provided destination\'s parent folder is not a GoogleDriveFile instance"

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v6, 0x7f0d00f9

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p3, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v1, p2

    const/4 v9, 0x1

    check-cast v1, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    const/4 v9, 0x2

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/vnd.google-apps.folder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v9, 0x7

    new-instance v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v8, v5, v3}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x0

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v0, p3}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {p2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getSize()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/henrythompson/quoda/filesystem/FileObject;->setSize(J)V

    const/4 v9, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v9, 0x4

    nop

    return-void

    const/4 v7, 0x7

    const/4 v9, 0x1

    :cond_1
    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getMimeType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/vnd.google-apps.script"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v9, 0x4

    invoke-direct {p0, p1, p3}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->getScriptType(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x0

    new-instance v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v5, v3, v2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$AppsScriptFile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v9, 0x5

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->getAppsScriptSourceSizeInBytes(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Lcom/henrythompson/quoda/filesystem/FileObject;->setSize(J)V

    goto :goto_0

    const/4 v0, 0x2

    const/4 v9, 0x6

    :cond_2
    new-instance v3, Lcom/henrythompson/quoda/filesystem/FilesystemException;

    const-string v4, "Unable to save file to Google Drive as its parent is neither a folder nor apps script project"

    iget-object v5, p0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0242

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/henrythompson/quoda/filesystem/FilesystemException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public setLastVisitedLocation(Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v5, 0x1

    instance-of v2, p1, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    if-nez v2, :cond_0

    const/4 v5, 0x5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "FileObject must be an instance of GoogleDriveFile"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v1, p1

    const/4 v5, 0x2

    check-cast v1, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;

    const/4 v5, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "gdrive"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "defaultpath_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getFilepath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultid_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x7

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "defaultmime_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/GoogleDrive$GoogleDriveFile;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const/4 v5, 0x3

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v5, 0x6

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public usesFilepaths()Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    const/4 v0, 0x0

    return v0

    const/4 v1, 0x1
.end method
