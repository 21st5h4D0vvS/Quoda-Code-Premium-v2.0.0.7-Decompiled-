.class Lcom/henrythompson/quoda/settings/SettingsActivity$13;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/settings/SettingsActivity;->addServerToList(Lcom/henrythompson/quoda/filesystem/Server;Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

.field final synthetic val$screen:Landroid/preference/PreferenceScreen;

.field final synthetic val$server:Lcom/henrythompson/quoda/filesystem/Server;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/PreferenceScreen;Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$13;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    iput-object p2, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$13;->val$screen:Landroid/preference/PreferenceScreen;

    iput-object p3, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$13;->val$server:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v4, 0x3

    const/4 v4, 0x6

    new-instance v0, Lcom/henrythompson/quoda/settings/SettingsActivity$13$1;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/settings/SettingsActivity$13$1;-><init>(Lcom/henrythompson/quoda/settings/SettingsActivity$13;)V

    const/4 v4, 0x5

    new-instance v1, Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$13;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;-><init>(Landroid/app/Activity;Z)V

    iget-object v2, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$13;->val$server:Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->setServer(Lcom/henrythompson/quoda/filesystem/Server;)Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->setListener(Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;)Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->show()Landroid/app/AlertDialog;

    const/4 v4, 0x3

    const/4 v1, 0x0

    return v1

    const/4 v2, 0x2
.end method
