.class public Lcom/henrythompson/quoda/FilebrowserActivity;
.super Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;


# static fields
.field public static final INTENT_DOCUMENT_TO_SAVE_UUID:Ljava/lang/String; = "document_uuid"


# instance fields
.field private mFilebrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/FilebrowserActivity;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/FilebrowserActivity;->attachFilebrowserCloseListener()V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method private attachFilebrowserCloseListener()V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserActivity;->mFilebrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    new-instance v1, Lcom/henrythompson/quoda/FilebrowserActivity$2;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/FilebrowserActivity$2;-><init>(Lcom/henrythompson/quoda/FilebrowserActivity;)V

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/FileBrowserPanel;->setCloseFileBrowserPanelListener(Lcom/henrythompson/quoda/FileBrowserPanel$OnCloseFileBrowserPanelListener;)V

    const/4 v2, 0x1

    nop

    return-void

    const/4 v1, 0x5
.end method

.method private attachFilebrowserFragment()V
    .locals 7

    const/4 v6, 0x0

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FilebrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "document_uuid"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x6

    const-string v3, "panel"

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5}, Lcom/henrythompson/quoda/FileBrowserPanel;->newInstance(Ljava/lang/String;ILjava/lang/String;Z)Lcom/henrythompson/quoda/FileBrowserPanel;

    move-result-object v1

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FilebrowserActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    const/4 v6, 0x6

    const v3, 0x7f080034

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    const/4 v6, 0x2

    iput-object v1, p0, Lcom/henrythompson/quoda/FilebrowserActivity;->mFilebrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    const/4 v6, 0x5

    nop

    return-void

    const/4 v4, 0x7
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    invoke-super {p0, p1, p2, p3}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserActivity;->mFilebrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserActivity;->mFilebrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/henrythompson/quoda/FileBrowserPanel;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x4

    :cond_0
    nop

    return-void

    const/4 v1, 0x2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    invoke-super {p0, p1}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x4

    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/FilebrowserActivity;->setContentView(I)V

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/FilebrowserActivity;->attachFilebrowserFragment()V

    const/4 v1, 0x3

    new-instance v0, Lcom/henrythompson/quoda/FilebrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/FilebrowserActivity$1;-><init>(Lcom/henrythompson/quoda/FilebrowserActivity;)V

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/FilebrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserActivity;->mFilebrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/FilebrowserActivity;->mFilebrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/henrythompson/quoda/FileBrowserPanel;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v1, 0x2

    :cond_0
    nop

    return-void

    const/4 v0, 0x3
.end method
