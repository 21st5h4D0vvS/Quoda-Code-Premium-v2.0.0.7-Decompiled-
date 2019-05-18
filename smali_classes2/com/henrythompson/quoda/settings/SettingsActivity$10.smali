.class Lcom/henrythompson/quoda/settings/SettingsActivity$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/settings/SettingsActivity;->showRemoveGoogleDriveAccountDialog(Landroid/preference/Preference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

.field final synthetic val$gdrive:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/Preference;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$10;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    iput-object p2, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$10;->val$gdrive:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$10;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/SettingsActivity;->access$400(Lcom/henrythompson/quoda/settings/SettingsActivity;)Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$10;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->access$500(Lcom/henrythompson/quoda/settings/SettingsActivity;)Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->deleteFilesystem(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$10;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->access$502(Lcom/henrythompson/quoda/settings/SettingsActivity;Lcom/henrythompson/quoda/filesystem/GoogleDrive;)Lcom/henrythompson/quoda/filesystem/GoogleDrive;

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$10;->val$gdrive:Landroid/preference/Preference;

    const v1, 0x7f0d01c2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    const/4 v2, 0x1

    nop

    return-void

    const/4 v1, 0x3
.end method
