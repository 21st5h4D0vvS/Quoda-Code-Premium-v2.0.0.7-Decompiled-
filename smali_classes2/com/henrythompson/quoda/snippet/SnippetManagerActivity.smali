.class public Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;
.super Landroid/app/Activity;


# instance fields
.field private mAddressBar:Landroid/widget/TextView;

.field private mCurrentFolder:Ljava/lang/String;

.field private mFAB:Lcom/melnykov/fab/FloatingActionButton;

.field private mFileDrawable:Landroid/graphics/drawable/Drawable;

.field private mFolderDrawable:Landroid/graphics/drawable/Drawable;

.field private mSnippetDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSnippetIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSnippetsList:Landroid/widget/ListView;

.field private mUpDrawable:Landroid/graphics/drawable/Drawable;

.field private noSnippetsMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x2

    const-string v0, "/"

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mCurrentFolder:Ljava/lang/String;

    nop

    return-void

    const/4 v1, 0x6
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mCurrentFolder:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x2
.end method

.method static synthetic access$002(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mCurrentFolder:Ljava/lang/String;

    return-object p1

    const/4 v0, 0x2
.end method

.method static synthetic access$100(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)Ljava/util/ArrayList;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetDescriptions:Ljava/util/ArrayList;

    return-object v0

    const/4 v1, 0x0
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;I)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x3

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->renameSnippetOrFolder(I)V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static synthetic access$300(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;I)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x5

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->deleteSnippetOrFolder(I)V

    nop

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$400(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;I)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->returnSnippet(I)V

    nop

    return-void

    const/4 v0, 0x2
.end method

.method static synthetic access$500(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;I)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x4

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->editSnippet(I)V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static synthetic access$600(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)Ljava/util/ArrayList;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetIDs:Ljava/util/ArrayList;

    return-object v0

    const/4 v0, 0x2
.end method

.method static synthetic access$700(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x3

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->onNewFolderClick(Ljava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static synthetic access$800(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->showFileAlreadyExistsDialog(Ljava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x2
.end method

.method private checkDrawables()V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mFolderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mFolderDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x7

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mFileDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mFileDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x5

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mUpDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mUpDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x4

    :cond_2
    nop

    return-void

    const/4 v1, 0x7
.end method

.method private deleteSnippetOrFolder(I)V
    .locals 7

    const/4 v6, 0x5

    const/4 v6, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "Folder"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    const/4 v6, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mCurrentFolder:Ljava/lang/String;

    const/4 v6, 0x5

    invoke-static {v2}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetIDs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {v2}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getInstance()Lcom/henrythompson/quoda/snippet/SnippetsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->deleteFolder(Ljava/lang/String;)V

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->refresh()V

    const/4 v6, 0x0

    nop

    return-void

    const/4 v4, 0x0

    const/4 v6, 0x7

    :cond_0
    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mCurrentFolder:Ljava/lang/String;

    const/4 v6, 0x2

    invoke-static {v2}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetIDs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v6, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getInstance()Lcom/henrythompson/quoda/snippet/SnippetsManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const/4 v6, 0x6

    invoke-virtual {v0, v3, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->deleteSnippet(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    const/4 v1, 0x3
.end method

.method private editSnippet(I)V
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "Folder"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x5

    const-string v1, "NEW_OR_VIEW"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x6

    const-string v1, "FOLDER"

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    const-string v2, "NAME"

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetIDs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x6

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x7

    :cond_0
    nop

    return-void

    const/4 v3, 0x4
.end method

.method private onNewFolderClick(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x6

    const/4 v5, 0x2

    if-nez p1, :cond_0

    const/4 v5, 0x4

    const-string p1, ""

    const/4 v5, 0x1

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x4

    const v3, 0x7f0d0188

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x4

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    const v3, 0x7f0d012e

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    const/4 v5, 0x2

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x3

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    const/4 v5, 0x6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x7

    const v3, 0x7f0d0066

    new-instance v4, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$5;

    invoke-direct {v4, p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$5;-><init>(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x7

    const v3, 0x7f0d002e

    new-instance v4, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$6;

    invoke-direct {v4, p0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$6;-><init>(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x6

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v5, 0x7

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const/4 v5, 0x5

    nop

    return-void

    const/4 v4, 0x3
.end method

.method private renameSnippetOrFolder(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v5, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "Folder"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_0

    const v3, 0x7f0d019f

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x2

    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    const v3, 0x7f0d012e

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    const/4 v5, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetIDs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x3

    const v3, 0x7f0d019e

    new-instance v4, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;

    invoke-direct {v4, p0, p1, v2, v1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$7;-><init>(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;ILandroid/widget/EditText;Z)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x5

    const-string v3, "Cancel"

    new-instance v4, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$8;

    invoke-direct {v4, p0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$8;-><init>(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v5, 0x7

    nop

    return-void

    const/4 v5, 0x6

    const/4 v5, 0x1

    :cond_0
    const v3, 0x7f0d01a0

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    const/4 v2, 0x6

    const/4 v5, 0x2

    :cond_1
    const v3, 0x7f0d022a

    goto :goto_1

    const/4 v3, 0x5
.end method

.method private returnSnippet(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v3, 0x3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    const-string v1, "SNIPPET_LOCATION"

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mCurrentFolder:Ljava/lang/String;

    invoke-static {v2}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x3

    const-string v2, "SNIPPET_NAME"

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetIDs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->setResult(ILandroid/content/Intent;)V

    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->finish()V

    const/4 v3, 0x5

    nop

    return-void

    const/4 v2, 0x0
.end method

.method private showFileAlreadyExistsDialog(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x1

    const/4 v4, 0x4

    const v0, 0x7f0d0228

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v4, 0x0

    nop

    return-void

    const/4 v2, 0x7
.end method


# virtual methods
.method public deleteDirectory(Ljava/io/File;)Z
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x1

    :goto_0
    return v2

    const/4 v1, 0x6

    const/4 v3, 0x7

    :cond_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    const/4 v3, 0x4

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x6

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->deleteDirectory(Ljava/io/File;)Z

    const/4 v3, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v1, 0x3

    const/4 v3, 0x3

    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    const/4 v2, 0x2

    const/4 v3, 0x7

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    goto :goto_0

    const/4 v1, 0x5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v3, 0x2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x6

    const v0, 0x7f0a0022

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->setContentView(I)V

    const/4 v3, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetIDs:Ljava/util/ArrayList;

    const/4 v3, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetDescriptions:Ljava/util/ArrayList;

    const/4 v3, 0x2

    const v0, 0x7f080154

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetsList:Landroid/widget/ListView;

    const/4 v3, 0x2

    const v0, 0x7f080037

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->noSnippetsMessage:Landroid/widget/TextView;

    const/4 v3, 0x0

    const v0, 0x7f080036

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mAddressBar:Landroid/widget/TextView;

    const/4 v3, 0x5

    const v0, 0x7f080038

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/melnykov/fab/FloatingActionButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mFAB:Lcom/melnykov/fab/FloatingActionButton;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mFAB:Lcom/melnykov/fab/FloatingActionButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetsList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/melnykov/fab/FloatingActionButton;->attachToListView(Landroid/widget/AbsListView;Lcom/melnykov/fab/ScrollDirectionListener;)V

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mFAB:Lcom/melnykov/fab/FloatingActionButton;

    new-instance v1, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$1;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$1;-><init>(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)V

    invoke-virtual {v0, v1}, Lcom/melnykov/fab/FloatingActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetsList:Landroid/widget/ListView;

    new-instance v1, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$2;-><init>(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetsList:Landroid/widget/ListView;

    new-instance v1, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$3;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$3;-><init>(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v3, 0x0

    nop

    return-void

    const/4 v3, 0x1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x7

    const/4 v0, 0x1

    const/4 v3, 0x3

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mCurrentFolder:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->finish()V

    const/4 v3, 0x7

    :goto_0
    return v0

    const/4 v0, 0x2

    const/4 v3, 0x0

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mCurrentFolder:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mCurrentFolder:Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->refresh()V

    goto :goto_0

    const/4 v3, 0x0

    const/4 v3, 0x7

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x2
.end method

.method public onNewSnippetClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x1

    const-string v1, "NEW_OR_VIEW"

    const/16 v2, 0x23d

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v3, 0x5

    const-string v1, "FOLDER"

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x5

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x0

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public onRefreshClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->refresh()V

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->refresh()V

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public onUpClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->finish()V

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public refresh()V
    .locals 15

    const/4 v14, 0x0

    iget-object v9, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mCurrentFolder:Ljava/lang/String;

    invoke-static {v9}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mCurrentFolder:Ljava/lang/String;

    iget-object v9, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mAddressBar:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getInstance()Lcom/henrythompson/quoda/snippet/SnippetsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v9

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->listSnippetsInLocation(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v6}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v9

    iget-object v10, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mCurrentFolder:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->listSubfoldersInLocation(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->checkDrawables()V

    iget-object v9, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetIDs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v11, Lcom/henrythompson/quoda/ListItem;

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const v12, 0x7f0d0227

    invoke-virtual {p0, v12}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mFileDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v11, v9, v12, v13}, Lcom/henrythompson/quoda/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetIDs:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v11, 0x4

    :cond_0
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v10, Lcom/henrythompson/quoda/ListItem;

    const v11, 0x7f0d012d

    invoke-virtual {p0, v11}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mFolderDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v10, v1, v11, v12}, Lcom/henrythompson/quoda/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    const/4 v3, 0x4

    :cond_1
    new-instance v9, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$4;

    invoke-direct {v9, p0}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity$4;-><init>(Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;)V

    invoke-static {v3, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iget-object v9, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetIDs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/henrythompson/quoda/ListItem;

    iget-object v9, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetIDs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/ListItem;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/ListItem;->getDescription()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    const/4 v0, 0x6

    :cond_2
    iget-object v9, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mCurrentFolder:Ljava/lang/String;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    new-instance v9, Lcom/henrythompson/quoda/ListItem;

    const v10, 0x7f0d002d

    invoke-virtual {p0, v10}, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    iget-object v12, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mUpDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {v9, v10, v11, v12}, Lcom/henrythompson/quoda/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {v3, v14, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    new-instance v0, Lcom/henrythompson/quoda/snippet/SnippetAdapter;

    invoke-direct {v0, p0, v3}, Lcom/henrythompson/quoda/snippet/SnippetAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    if-gtz v9, :cond_4

    iget-object v9, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->noSnippetsMessage:Landroid/widget/TextView;

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    iget-object v9, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->mSnippetsList:Landroid/widget/ListView;

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    nop

    return-void

    const/4 v3, 0x3

    :cond_4
    iget-object v9, p0, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;->noSnippetsMessage:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    const/4 v0, 0x2
.end method
