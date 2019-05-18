.class public Lcom/henrythompson/quoda/settings/SettingsFragment;
.super Landroid/preference/PreferenceFragment;

# interfaces
.implements Lcom/henrythompson/quoda/DataEventListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private mAuthActivityHandler:Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;

.field private mDropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

.field private mGoogleDrive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

.field private mParent:Lcom/henrythompson/quoda/settings/SettingsActivity;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x5

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method

.method private checkIfDatamangerLoaded()Z
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/DataController;->isEverythingLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x3

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x6

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/settings/SettingsFragment;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x5

    const/4 v1, 0x0

    const/4 v3, 0x5

    :goto_0
    return v1

    const/4 v1, 0x3

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    const/4 v2, 0x3
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsFragment;->mAuthActivityHandler:Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsFragment;->mAuthActivityHandler:Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x0

    :cond_0
    nop

    return-void

    const/4 v0, 0x0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v7, 0x7

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/henrythompson/quoda/settings/SettingsActivity;

    iput-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsFragment;->mParent:Lcom/henrythompson/quoda/settings/SettingsActivity;

    const/4 v7, 0x5

    const-string v1, "appearance"

    const/4 v7, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/settings/SettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/settings/SettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "settings"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/settings/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x7

    if-eqz v0, :cond_1

    const/4 v7, 0x6

    const-string v2, "com.henrythompson.quoda.settings.SettingsActivity.appearance"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v7, 0x5

    const-string v1, "appearance"

    const/4 v7, 0x7

    :cond_1
    :goto_0
    const-string v2, "appearance"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v7, 0x7

    const v2, 0x7f100001

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/settings/SettingsFragment;->addPreferencesFromResource(I)V

    const/4 v7, 0x7

    :cond_2
    :goto_1
    nop

    return-void

    const/4 v6, 0x5

    const/4 v7, 0x7

    :cond_3
    const-string v2, "com.henrythompson.quoda.settings.SettingsActivity.editor"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v7, 0x2

    const-string v1, "editor"

    goto :goto_0

    const/4 v5, 0x2

    const/4 v7, 0x7

    :cond_4
    const-string v2, "com.henrythompson.quoda.settings.SettingsActivity.files"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v7, 0x1

    const-string v1, "files"

    goto :goto_0

    const/4 v4, 0x7

    const/4 v7, 0x1

    :cond_5
    const-string v2, "com.henrythompson.quoda.settings.SettingsActivity.keybindings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v7, 0x5

    const-string v1, "keybindings"

    goto :goto_0

    const/4 v2, 0x2

    const/4 v7, 0x7

    :cond_6
    const-string v2, "com.henrythompson.quoda.settings.SettingsActivity.cloud"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v7, 0x3

    const-string v1, "cloud"

    goto :goto_0

    const/4 v5, 0x3

    const/4 v7, 0x1

    :cond_7
    const-string v2, "com.henrythompson.quoda.settings.SettingsActivity.contribute"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v7, 0x4

    const-string v1, "contribute"

    goto :goto_0

    const/4 v4, 0x4

    const/4 v7, 0x0

    :cond_8
    const-string v2, "editor"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v7, 0x7

    const v2, 0x7f100004

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/settings/SettingsFragment;->addPreferencesFromResource(I)V

    goto :goto_1

    const/4 v2, 0x5

    const/4 v7, 0x6

    :cond_9
    const-string v2, "files"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v7, 0x0

    const v2, 0x7f100005

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/settings/SettingsFragment;->addPreferencesFromResource(I)V

    goto :goto_1

    const/4 v2, 0x6

    const/4 v7, 0x0

    :cond_a
    const-string v2, "keybindings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/4 v7, 0x7

    const v2, 0x7f100006

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/settings/SettingsFragment;->addPreferencesFromResource(I)V

    goto :goto_1

    const/4 v1, 0x2

    const/4 v7, 0x5

    :cond_b
    const-string v2, "cloud"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v7, 0x5

    const v2, 0x7f100002

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/settings/SettingsFragment;->addPreferencesFromResource(I)V

    const/4 v7, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsFragment;->mParent:Lcom/henrythompson/quoda/settings/SettingsActivity;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/settings/SettingsActivity;->addServers(Landroid/preference/PreferenceScreen;)V

    const/4 v7, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsFragment;->mParent:Lcom/henrythompson/quoda/settings/SettingsActivity;

    const-string v3, "connect_to_dropbox"

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v4, "connect_to_googledrive"

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    const-string v5, "add_server"

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/settings/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/henrythompson/quoda/settings/SettingsActivity;->addConnectOnClickListeners(Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V

    const/4 v7, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsFragment;->mParent:Lcom/henrythompson/quoda/settings/SettingsActivity;

    const-string v3, "connect_to_dropbox"

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    const-string v4, "connect_to_googledrive"

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/henrythompson/quoda/settings/SettingsActivity;->setConnectionSummaries(Landroid/preference/Preference;Landroid/preference/Preference;)V

    goto/16 :goto_1

    const/4 v5, 0x6

    const/4 v7, 0x0

    :cond_c
    const-string v2, "contribute"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v7, 0x0

    const v2, 0x7f100003

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/settings/SettingsFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    const/4 v3, 0x5
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x4

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    const/4 v1, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/henrythompson/quoda/DataController;->removeListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public onReceiveCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    const/4 v0, 0x0

    return v0

    const/4 v1, 0x0
.end method

.method public onReceiveEvent(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x3

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/settings/SettingsFragment;->checkIfDatamangerLoaded()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v3, 0x5

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x5

    const/4 v3, 0x4

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsFragment;->mAuthActivityHandler:Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsFragment;->mAuthActivityHandler:Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;

    invoke-interface {v2}, Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;->onActivityResume()V

    const/4 v3, 0x7

    :cond_2
    const-string v2, "connect_to_googledrive"

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    const/4 v3, 0x4

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsFragment;->mGoogleDrive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsFragment;->mGoogleDrive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/GoogleDrive;->accountLinked()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v3, 0x7

    const v2, 0x7f0d01c3

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    const/4 v3, 0x2

    :cond_3
    :goto_1
    const-string v2, "connect_to_dropbox"

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/settings/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v3, 0x7

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsFragment;->mDropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsFragment;->mDropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/Dropbox;->accountLinked()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v3, 0x5

    const v2, 0x7f0d01c0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    const/4 v3, 0x0

    const/4 v3, 0x7

    :cond_4
    if-eqz v1, :cond_3

    const/4 v3, 0x0

    const v2, 0x7f0d01c2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    const/4 v0, 0x0

    const/4 v3, 0x2

    :cond_5
    if-eqz v0, :cond_0

    const/4 v3, 0x0

    const v2, 0x7f0d01bf

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    const/4 v2, 0x3
.end method

.method public onStart()V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/settings/SettingsFragment;->checkIfDatamangerLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    nop

    return-void

    const/4 v2, 0x6

    const/4 v2, 0x1

    :cond_0
    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v0

    const-string v1, "google_drive"

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    iput-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsFragment;->mGoogleDrive:Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    const/4 v2, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v0

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/filesystem/Dropbox;

    iput-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsFragment;->mDropbox:Lcom/henrythompson/quoda/filesystem/Dropbox;

    const/4 v2, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/henrythompson/quoda/DataController;->attachListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    goto :goto_0

    const/4 v2, 0x5
.end method
