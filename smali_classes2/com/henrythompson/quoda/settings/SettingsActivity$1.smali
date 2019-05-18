.class Lcom/henrythompson/quoda/settings/SettingsActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/settings/SettingsActivity;->addConnectOnClickListeners(Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;)V
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

    const/4 v0, 0x2

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$1;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    iput-object p2, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$1;->val$dropbox:Landroid/preference/Preference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$1;->this$0:Lcom/henrythompson/quoda/settings/SettingsActivity;

    iget-object v1, p0, Lcom/henrythompson/quoda/settings/SettingsActivity$1;->val$dropbox:Landroid/preference/Preference;

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/settings/SettingsActivity;->access$000(Lcom/henrythompson/quoda/settings/SettingsActivity;Landroid/preference/Preference;)V

    const/4 v2, 0x4

    const/4 v0, 0x1

    return v0

    const/4 v1, 0x2
.end method
