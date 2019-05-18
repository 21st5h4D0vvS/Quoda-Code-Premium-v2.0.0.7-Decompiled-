.class public Lcom/henrythompson/quoda/PreviewActivity;
.super Landroid/support/v4/app/FragmentActivity;


# instance fields
.field private mCloseButton:Landroid/widget/ImageButton;

.field private mFragment:Lcom/henrythompson/quoda/PreviewFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x2

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public finish()V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x5

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    const/4 v2, 0x5

    const v0, 0x7f01000c

    const v1, 0x7f01000a

    invoke-virtual {p0, v0, v1}, Lcom/henrythompson/quoda/PreviewActivity;->overridePendingTransition(II)V

    const/4 v2, 0x5

    nop

    return-void

    const/4 v2, 0x7
.end method

.method public onBackPressed()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewActivity;->mFragment:Lcom/henrythompson/quoda/PreviewFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewActivity;->mFragment:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/PreviewFragment;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x6

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    const/4 v1, 0x1

    :cond_0
    nop

    return-void

    const/4 v1, 0x7
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v2, 0x2

    const v0, 0x7f0a0020

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/PreviewActivity;->setContentView(I)V

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/PreviewActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f080035

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/PreviewFragment;

    iput-object v0, p0, Lcom/henrythompson/quoda/PreviewActivity;->mFragment:Lcom/henrythompson/quoda/PreviewFragment;

    const/4 v2, 0x2

    const v0, 0x7f0800c1

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/PreviewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/PreviewActivity;->mCloseButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewActivity;->mCloseButton:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v1, 0x4
.end method
