.class public abstract Lcom/henrythompson/quoda/AuthHandlingFragment;
.super Landroid/support/v4/app/Fragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/AuthHandlingFragment$IllegalActivityException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x3

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public getAuthActivity()Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/AuthHandlingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    return-object v0

    const/4 v0, 0x1
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x7

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/AuthHandlingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x3

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    if-nez v1, :cond_0

    const/4 v3, 0x5

    new-instance v1, Lcom/henrythompson/quoda/AuthHandlingFragment$IllegalActivityException;

    const-string v2, "AuthHandlingFragment added to an activity which is not an AuthHandlingFragmentActivity!"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/AuthHandlingFragment$IllegalActivityException;-><init>(Ljava/lang/String;)V

    throw v1

    const/4 v3, 0x1

    :cond_0
    nop

    return-void

    const/4 v0, 0x1
.end method
