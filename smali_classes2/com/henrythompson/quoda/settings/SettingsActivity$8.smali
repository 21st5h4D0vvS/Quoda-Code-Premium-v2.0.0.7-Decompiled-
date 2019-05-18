.class Lcom/henrythompson/quoda/settings/SettingsActivity$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/settings/SettingsActivity;->showRemoveDropboxAccountDialog(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

.field final synthetic val$dropbox:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/Preference;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$8;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    iput-object p2, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$8;->val$dropbox:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$8;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/SettingsActivity;->access$400(Lcom/henrythompson/quoda/settings/SettingsActivity;)Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$8;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->access$300(Lcom/henrythompson/quoda/settings/SettingsActivity;)Lcom/henrythompson/quoda/filesystem/Dropbox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->deleteFilesystem(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$8;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->access$302(Lcom/henrythompson/quoda/settings/SettingsActivity;Lcom/henrythompson/quoda/filesystem/Dropbox;)Lcom/henrythompson/quoda/filesystem/Dropbox;

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$8;->val$dropbox:Landroid/preference/Preference;

    const v1, 0x7f0d01bf

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    const/4 v2, 0x1

    nop

    return-void

    const/4 v1, 0x4
.end method
