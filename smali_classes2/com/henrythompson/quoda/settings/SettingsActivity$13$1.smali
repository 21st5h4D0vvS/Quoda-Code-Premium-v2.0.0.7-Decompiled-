.class Lcom/henrythompson/quoda/settings/SettingsActivity$13$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/settings/SettingsActivity$13;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/settings/SettingsActivity$13;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/settings/SettingsActivity$13;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$13$1;->this$1:Lcom/henrythompson/quoda/settings/SettingsActivity$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public onAddServerComplete(Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public onCancel(Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public onDelete(Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 5

    const/4 v4, 0x4

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$13$1;->this$1:Lcom/henrythompson/quoda/settings/SettingsActivity$13;

    iget-object v1, v1, Lcom/henrythompson/quoda/settings/SettingsActivity$13;->val$screen:Landroid/preference/PreferenceScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$13$1;->this$1:Lcom/henrythompson/quoda/settings/SettingsActivity$13;

    iget-object v3, v3, Lcom/henrythompson/quoda/settings/SettingsActivity$13;->val$server:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/filesystem/Server;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$13$1;->this$1:Lcom/henrythompson/quoda/settings/SettingsActivity$13;

    iget-object v1, v1, Lcom/henrythompson/quoda/settings/SettingsActivity$13;->val$screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v4, 0x4

    nop

    return-void

    const/4 v2, 0x1
.end method

.method public onEditServerComplete(Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$13$1;->this$1:Lcom/henrythompson/quoda/settings/SettingsActivity$13;

    iget-object v1, v1, Lcom/henrythompson/quoda/settings/SettingsActivity$13;->val$screen:Landroid/preference/PreferenceScreen;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "server_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v4, 0x3

    if-eqz v0, :cond_0

    const/4 v4, 0x7

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Server;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v4, 0x5

    :cond_0
    nop

    return-void

    const/4 v1, 0x6
.end method
