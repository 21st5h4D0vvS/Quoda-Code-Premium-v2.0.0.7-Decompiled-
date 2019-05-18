.class Lcom/henrythompson/quoda/settings/SettingsActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/settings/SettingsActivity;->handleOnDropboxClick(Landroid/preference/Preference;)V
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

    const/4 v0, 0x7

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$5;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    iput-object p2, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$5;->val$dropbox:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$5;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/settings/SettingsActivity;->access$400(Lcom/henrythompson/quoda/settings/SettingsActivity;)Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$5;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    invoke-static {v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->access$300(Lcom/henrythompson/quoda/settings/SettingsActivity;)Lcom/henrythompson/quoda/filesystem/Dropbox;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->deleteFilesystem(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$5;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->access$302(Lcom/henrythompson/quoda/settings/SettingsActivity;Lcom/henrythompson/quoda/filesystem/Dropbox;)Lcom/henrythompson/quoda/filesystem/Dropbox;

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$5;->val$dropbox:Landroid/preference/Preference;

    const v1, 0x7f0d01bf

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$5;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    const v1, 0x7f0d00ec

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v3, 0x2

    nop

    return-void

    const/4 v2, 0x2
.end method
