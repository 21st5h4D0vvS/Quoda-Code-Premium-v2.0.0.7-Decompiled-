.class public abstract Lcom/henrythompson/quoda/AuthHandlingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Lcom/henrythompson/quoda/IAuthHandlingActivity;


# instance fields
.field protected mAuthHandler:Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field protected mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x3

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/AuthHandlingPreferenceActivity;->mAuthHandler:Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/AuthHandlingPreferenceActivity;->mAuthHandler:Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x1

    :cond_0
    nop

    return-void

    const/4 v1, 0x7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/AuthHandlingPreferenceActivity;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v1, 0x4

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/AuthHandlingPreferenceActivity;->mAuthHandler:Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/AuthHandlingPreferenceActivity;->mAuthHandler:Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v1, 0x3

    :cond_0
    nop

    return-void

    const/4 v1, 0x1
.end method

.method public onResume()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/AuthHandlingPreferenceActivity;->mAuthHandler:Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/AuthHandlingPreferenceActivity;->mAuthHandler:Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;

    invoke-interface {v0}, Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;->onActivityResume()V

    const/4 v1, 0x3

    :cond_0
    nop

    return-void

    const/4 v1, 0x3
.end method

.method public removeAuthHandler()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/AuthHandlingPreferenceActivity;->mAuthHandler:Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;

    const/4 v1, 0x3

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public setAuthHandler(Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;)V
    .locals 1
    .param p1    # Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/AuthHandlingPreferenceActivity;->mAuthHandler:Lcom/henrythompson/quoda/filesystem/AuthActivityHandler;

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x1
.end method
