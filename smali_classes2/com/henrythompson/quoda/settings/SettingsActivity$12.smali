.class Lcom/henrythompson/quoda/settings/SettingsActivity$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/settings/SettingsActivity;->handleAddServerClick(Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

.field final synthetic val$screen:Landroid/preference/PreferenceScreen;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/PreferenceScreen;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$12;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    iput-object p2, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$12;->val$screen:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onAddServerComplete(Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$12;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$12;->val$screen:Landroid/preference/PreferenceScreen;

    invoke-static {v0, p1, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->access$600(Lcom/henrythompson/quoda/settings/SettingsActivity;Lcom/henrythompson/quoda/filesystem/Server;Landroid/preference/PreferenceScreen;)V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public onCancel(Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public onDelete(Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public onEditServerComplete(Lcom/henrythompson/quoda/filesystem/Server;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x5
.end method
