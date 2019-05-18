.class public Lcom/henrythompson/quoda/AuthHandlingDialogFragment;
.super Landroid/support/v4/app/DialogFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/AuthHandlingDialogFragment$IllegalActivityException;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x7

    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public getAuthActivity()Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/AuthHandlingDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    return-object v0

    const/4 v0, 0x2
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x3

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/AuthHandlingDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    if-nez v1, :cond_0

    const/4 v3, 0x5

    new-instance v1, Lcom/henrythompson/quoda/AuthHandlingFragment$IllegalActivityException;

    const-string v2, "AuthHandlingFragment added to an activity which is not an AuthHandlingFragmentActivity!"

    invoke-direct {v1, v2}, Lcom/henrythompson/quoda/AuthHandlingFragment$IllegalActivityException;-><init>(Ljava/lang/String;)V

    throw v1

    const/4 v3, 0x3

    :cond_0
    nop

    return-void

    const/4 v2, 0x4
.end method
