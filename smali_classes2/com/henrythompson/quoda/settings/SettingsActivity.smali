.class public Lcom/henrythompson/quoda/settings/SettingsActivity;
.super Lcom/henrythompson/quoda/AuthHandlingPreferenceActivity;

# interfaces
.implements Lcom/henrythompson/quoda/DataEventListener;


# static fields
.field public static final ACTION_APPEARANCE:Ljava/lang/String; = "com.henrythompson.quoda.settings.SettingsActivity.appearance"

.field public static final ACTION_CLOUD:Ljava/lang/String; = "com.henrythompson.quoda.settings.SettingsActivity.cloud"

.field public static final ACTION_CONTRIBUTE:Ljava/lang/String; = "com.henrythompson.quoda.settings.SettingsActivity.contribute"

.field public static final ACTION_EDITOR:Ljava/lang/String; = "com.henrythompson.quoda.settings.SettingsActivity.editor"

.field public static final ACTION_FILES:Ljava/lang/String; = "com.henrythompson.quoda.settings.SettingsActivity.files"

.field public static final ACTION_KEYBINDINGS:Ljava/lang/String; = "com.henrythompson.quoda.settings.SettingsActivity.keybindings"


# instance fields
.field private mDropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

.field private mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

.field private mGoogleDrive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/AuthHandlingPreferenceActivity;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/Preference;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x4

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->handleOnDropboxClick(Landroid/preference/Preference;)V

    nop

    return-void

    const/4 v0, 0x4
.end method

.method static synthetic access$100(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/Preference;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x3

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->handleOnGoogleDriveClick(Landroid/preference/Preference;)V

    nop

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2}, Lcom/henrythompson/quoda/settings/SettingsActivity;->handleAddServerClick(Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static synthetic access$300(Lcom/henrythompson/quoda/settings/SettingsActivity;)Lcom/henrythompson/quoda/filesystem/Dropbox;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mDropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

    return-object v0

    const/4 v1, 0x0
.end method

.method static synthetic access$302(Lcom/henrythompson/quoda/settings/SettingsActivity;Lcom/henrythompson/quoda/filesystem/Dropbox;)Lcom/henrythompson/quoda/filesystem/Dropbox;
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mDropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

    return-object p1

    const/4 v0, 0x4
.end method

.method static synthetic access$400(Lcom/henrythompson/quoda/settings/SettingsActivity;)Lcom/henrythompson/quoda/filesystem/FilesystemsManager;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    return-object v0

    const/4 v1, 0x1
.end method

.method static synthetic access$500(Lcom/henrythompson/quoda/settings/SettingsActivity;)Lcom/henrythompson/quoda/filesystem/GoogleDrive;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mGoogleDrive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    return-object v0

    const/4 v1, 0x3
.end method

.method static synthetic access$502(Lcom/henrythompson/quoda/settings/SettingsActivity;Lcom/henrythompson/quoda/filesystem/GoogleDrive;)Lcom/henrythompson/quoda/filesystem/GoogleDrive;
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mGoogleDrive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    return-object p1

    const/4 v0, 0x6
.end method

.method static synthetic access$600(Lcom/henrythompson/quoda/settings/SettingsActivity;Lcom/henrythompson/quoda/filesystem/Server;Landroid/preference/PreferenceScreen;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x7

    invoke-direct {p0, p1, p2}, Lcom/henrythompson/quoda/settings/SettingsActivity;->addServerToList(Lcom/henrythompson/quoda/filesystem/Server;Landroid/preference/PreferenceScreen;)V

    nop

    return-void

    const/4 v0, 0x6
.end method

.method private addServerToList(Lcom/henrythompson/quoda/filesystem/Server;Landroid/preference/PreferenceScreen;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x2

    new-instance v0, Landroid/preference/Preference;

    invoke-direct {v0, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x5

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v3, 0x5

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "server_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v3, 0x6

    new-instance v1, Lcom/henrythompson/quoda/settings/SettingsActivity$13;

    invoke-direct {v1, p0, p2, p1}, Lcom/henrythompson/quoda/settings/SettingsActivity$13;-><init>(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/PreferenceScreen;Lcom/henrythompson/quoda/filesystem/Server;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/4 v3, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const/4 v3, 0x1

    nop

    return-void

    const/4 v0, 0x2
.end method

.method private checkIfDatamangerLoaded()Z
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/DataController;->isEverythingLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/settings/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x6

    :goto_0
    return v1

    const/4 v0, 0x4

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    const/4 v1, 0x2
.end method

.method private handleAddServerClick(Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x4

    new-instance v0, Lcom/henrythompson/quoda/settings/SettingsActivity$12;

    invoke-direct {v0, p0, p2}, Lcom/henrythompson/quoda/settings/SettingsActivity$12;-><init>(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/PreferenceScreen;)V

    const/4 v3, 0x2

    new-instance v1, Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->setListener(Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;)Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->show()Landroid/app/AlertDialog;

    const/4 v3, 0x3

    nop

    return-void

    const/4 v3, 0x2
.end method

.method private handleOnDropboxClick(Landroid/preference/Preference;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mDropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mDropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/Dropbox;->accountLinked()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->showRemoveDropboxAccountDialog(Landroid/preference/Preference;)V

    const/4 v4, 0x1

    :goto_0
    nop

    return-void

    const/4 v0, 0x6

    const/4 v4, 0x7

    :cond_0
    new-instance v0, Lcom/henrythompson/quoda/settings/SettingsActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/henrythompson/quoda/settings/SettingsActivity$4;-><init>(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/Preference;)V

    const/4 v4, 0x5

    new-instance v1, Lcom/henrythompson/quoda/settings/SettingsActivity$5;

    invoke-direct {v1, p0, p1}, Lcom/henrythompson/quoda/settings/SettingsActivity$5;-><init>(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/Preference;)V

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    const-class v3, Lcom/henrythompson/quoda/filesystem/Dropbox;

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->createCloudServiceInstance(Ljava/lang/Class;)Lcom/henrythompson/quoda/filesystem/CloudService;

    move-result-object v2

    check-cast v2, Lcom/henrythompson/quoda/filesystem/Dropbox;

    iput-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mDropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mDropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

    invoke-virtual {v2, p0, v0, v1}, Lcom/henrythompson/quoda/filesystem/Dropbox;->authorise(Lcom/henrythompson/quoda/IAuthHandlingActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    const/4 v0, 0x6
.end method

.method private handleOnGoogleDriveClick(Landroid/preference/Preference;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mGoogleDrive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mGoogleDrive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->accountLinked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x6

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->showRemoveGoogleDriveAccountDialog(Landroid/preference/Preference;)V

    const/4 v3, 0x7

    :goto_0
    nop

    return-void

    const/4 v0, 0x2

    const/4 v3, 0x6

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    const-class v1, Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->createCloudServiceInstance(Ljava/lang/Class;)Lcom/henrythompson/quoda/filesystem/CloudService;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    iput-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mGoogleDrive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mGoogleDrive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    new-instance v1, Lcom/henrythompson/quoda/settings/SettingsActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/henrythompson/quoda/settings/SettingsActivity$6;-><init>(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/Preference;)V

    new-instance v2, Lcom/henrythompson/quoda/settings/SettingsActivity$7;

    invoke-direct {v2, p0, p1}, Lcom/henrythompson/quoda/settings/SettingsActivity$7;-><init>(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/Preference;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->authorise(Lcom/henrythompson/quoda/IAuthHandlingActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    const/4 v3, 0x3
.end method

.method private showRemoveDropboxAccountDialog(Landroid/preference/Preference;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x6

    const v1, 0x7f0d00a5

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x4

    const v1, 0x7f0d00a4

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x2

    const v1, 0x7f0d0251

    new-instance v2, Lcom/henrythompson/quoda/settings/SettingsActivity$8;

    invoke-direct {v2, p0, p1}, Lcom/henrythompson/quoda/settings/SettingsActivity$8;-><init>(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x1

    const v1, 0x7f0d002e

    new-instance v2, Lcom/henrythompson/quoda/settings/SettingsActivity$9;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/settings/SettingsActivity$9;-><init>(Lcom/henrythompson/quoda/settings/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x4

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v3, 0x4

    nop

    return-void

    const/4 v2, 0x5
.end method

.method private showRemoveGoogleDriveAccountDialog(Landroid/preference/Preference;)V
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x4

    const v1, 0x7f0d00a3

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x0

    const v1, 0x7f0d00a2

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x3

    const v1, 0x7f0d0251

    new-instance v2, Lcom/henrythompson/quoda/settings/SettingsActivity$10;

    invoke-direct {v2, p0, p1}, Lcom/henrythompson/quoda/settings/SettingsActivity$10;-><init>(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/Preference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x7

    const v1, 0x7f0d002e

    new-instance v2, Lcom/henrythompson/quoda/settings/SettingsActivity$11;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/settings/SettingsActivity$11;-><init>(Lcom/henrythompson/quoda/settings/SettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v3, 0x4

    nop

    return-void

    const/4 v3, 0x0
.end method


# virtual methods
.method public addConnectOnClickListeners(Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    new-instance v0, Lcom/henrythompson/quoda/settings/SettingsActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/henrythompson/quoda/settings/SettingsActivity$1;-><init>(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/Preference;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/4 v1, 0x1

    new-instance v0, Lcom/henrythompson/quoda/settings/SettingsActivity$2;

    invoke-direct {v0, p0, p2}, Lcom/henrythompson/quoda/settings/SettingsActivity$2;-><init>(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/Preference;)V

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/4 v1, 0x1

    new-instance v0, Lcom/henrythompson/quoda/settings/SettingsActivity$3;

    invoke-direct {v0, p0, p3, p4}, Lcom/henrythompson/quoda/settings/SettingsActivity$3;-><init>(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {p3, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public addServers(Landroid/preference/PreferenceScreen;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->list()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v4, 0x3

    if-nez v1, :cond_1

    const/4 v4, 0x4

    :cond_0
    nop

    return-void

    const/4 v1, 0x7

    const/4 v4, 0x5

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/filesystem/Filesystem;

    const/4 v4, 0x1

    instance-of v3, v0, Lcom/henrythompson/quoda/filesystem/Server;

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    check-cast v0, Lcom/henrythompson/quoda/filesystem/Server;

    invoke-direct {p0, v0, p1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->addServerToList(Lcom/henrythompson/quoda/filesystem/Server;Landroid/preference/PreferenceScreen;)V

    goto :goto_0

    const/4 v1, 0x3
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    const-string v0, "com.henrythompson.quoda.settings.SettingsFragment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    const/4 v0, 0x1
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x7

    const/4 v2, 0x4

    const/high16 v0, 0x7f100000

    invoke-virtual {p0, v0, p1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->loadHeadersFromResource(ILjava/util/List;)V

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/settings/SettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f0d01b6

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x4

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/henrythompson/quoda/AuthHandlingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v5, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/henrythompson/quoda/DataController;->attachListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v5, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/settings/SettingsActivity;->checkIfDatamangerLoaded()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v5, 0x6

    const-string v1, "SettingsActivity"

    const-string v2, "Data manager not loaded in onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x6

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x7

    const/4 v5, 0x6

    :cond_1
    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    const/4 v5, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    const-string v2, "dropbox"

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/filesystem/Dropbox;

    iput-object v1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mDropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

    const/4 v5, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    const-string v2, "google_drive"

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    iput-object v1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mGoogleDrive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    const/4 v5, 0x1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    const/4 v5, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    const-string v1, "com.henrythompson.quoda.settings.SettingsActivity.appearance"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    const v1, 0x7f100001

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->addPreferencesFromResource(I)V

    goto :goto_0

    const/4 v2, 0x6

    const/4 v5, 0x4

    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "com.henrythompson.quoda.settings.SettingsActivity.editor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v5, 0x0

    const v1, 0x7f100004

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->addPreferencesFromResource(I)V

    goto :goto_0

    const/4 v5, 0x4

    const/4 v5, 0x5

    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "com.henrythompson.quoda.settings.SettingsActivity.files"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v5, 0x2

    const v1, 0x7f100005

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->addPreferencesFromResource(I)V

    goto :goto_0

    const/4 v4, 0x2

    const/4 v5, 0x2

    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "com.henrythompson.quoda.settings.SettingsActivity.keybindings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v5, 0x7

    const v1, 0x7f100006

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    const/4 v2, 0x5

    const/4 v5, 0x5

    :cond_5
    if-eqz v0, :cond_6

    const-string v1, "com.henrythompson.quoda.settings.SettingsActivity.contribute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v5, 0x2

    const v1, 0x7f100003

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    const/4 v1, 0x6

    const/4 v5, 0x7

    :cond_6
    if-eqz v0, :cond_7

    const-string v1, "com.henrythompson.quoda.settings.SettingsActivity.cloud"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v5, 0x6

    const v1, 0x7f100002

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->addPreferencesFromResource(I)V

    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/settings/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->addServers(Landroid/preference/PreferenceScreen;)V

    const/4 v5, 0x7

    const-string v1, "connect_to_dropbox"

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "connect_to_googledrive"

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const-string v3, "add_server"

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/settings/SettingsActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/henrythompson/quoda/settings/SettingsActivity;->addConnectOnClickListeners(Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    const/4 v5, 0x3

    const-string v1, "connect_to_dropbox"

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const-string v2, "connect_to_googledrive"

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/settings/SettingsActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/henrythompson/quoda/settings/SettingsActivity;->setConnectionSummaries(Landroid/preference/Preference;Landroid/preference/Preference;)V

    goto/16 :goto_0

    const/4 v2, 0x1

    const/4 v5, 0x0

    :cond_7
    const v1, 0x7f100007

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    const/4 v4, 0x6
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x3

    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingPreferenceActivity;->onDestroy()V

    const/4 v1, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/henrythompson/quoda/DataController;->removeListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x4
.end method

.method public onReceiveCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    const/4 v0, 0x0

    return v0

    const/4 v1, 0x2
.end method

.method public onReceiveEvent(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x6

    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingPreferenceActivity;->onResume()V

    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/settings/SettingsActivity;->checkIfDatamangerLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    const-string v0, "SettingsActivity"

    const-string v1, "Data manager not loaded in onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x3

    :cond_0
    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setConnectionSummaries(Landroid/preference/Preference;Landroid/preference/Preference;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mDropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mDropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/Dropbox;->accountLinked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const v0, 0x7f0d01c0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    const/4 v1, 0x4

    :goto_0
    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mGoogleDrive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity;->mGoogleDrive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->accountLinked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    const v0, 0x7f0d01c3

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setSummary(I)V

    const/4 v1, 0x0

    :goto_1
    nop

    return-void

    const/4 v0, 0x0

    const/4 v1, 0x2

    :cond_0
    const v0, 0x7f0d01bf

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    const/4 v0, 0x1

    const/4 v1, 0x5

    :cond_1
    const v0, 0x7f0d01c2

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    const/4 v1, 0x2
.end method
