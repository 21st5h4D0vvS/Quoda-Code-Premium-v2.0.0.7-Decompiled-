.class public Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;
.super Landroid/app/Activity;


# instance fields
.field private mEdtContents:Landroid/widget/EditText;

.field private mEdtName:Landroid/widget/EditText;

.field private mFilename:Ljava/lang/String;

.field private mIsEdited:Z

.field private mMode:I

.field private mParentFolder:Ljava/lang/String;

.field private mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

.field onTextChangedWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v0, ""

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mFilename:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mIsEdited:Z

    const/4 v1, 0x2

    new-instance v0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$6;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$6;-><init>(Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->onTextChangedWatcher:Landroid/text/TextWatcher;

    nop

    return-void

    const/4 v0, 0x1
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;Z)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->performSave(Z)V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static synthetic access$102(Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;Z)Z
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x5

    iput-boolean p1, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mIsEdited:Z

    return p1

    const/4 v0, 0x3
.end method

.method private performSave(Z)V
    .locals 6

    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v5, 0x4

    :try_start_0
    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mEdtName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/snippet/Snippet;->setName(Ljava/lang/String;)V

    const/4 v5, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    iget-object v3, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mEdtContents:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/snippet/Snippet;->setContent(Ljava/lang/String;)V

    const/4 v5, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getInstance()Lcom/henrythompson/quoda/snippet/SnippetsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const/4 v5, 0x4

    iget v2, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mMode:I

    if-ne v2, v4, :cond_1

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->updateSnippet(Lcom/henrythompson/quoda/snippet/Snippet;)V

    const/4 v5, 0x6

    :goto_0
    const v2, 0x7f0d01a5

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    const/4 v5, 0x3

    if-eqz p1, :cond_0

    const/4 v5, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->finish()V

    const/4 v5, 0x6

    :cond_0
    :goto_1
    nop

    return-void

    const/4 v1, 0x5

    const/4 v5, 0x2

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->addSnippet(Lcom/henrythompson/quoda/snippet/Snippet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    const/4 v3, 0x4

    const/4 v5, 0x2

    :catch_0
    move-exception v1

    const/4 v5, 0x1

    const v2, 0x7f0d0101

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1

    const/4 v0, 0x3
.end method


# virtual methods
.method public cancelSnippet()V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mIsEdited:Z

    if-eqz v1, :cond_0

    const/4 v3, 0x3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x3

    const v1, 0x7f0d01a3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x6

    const v1, 0x7f0d01a4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    const v1, 0x7f0d0251

    new-instance v2, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$3;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$3;-><init>(Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x4

    const v1, 0x7f0d0189

    new-instance v2, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$4;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$4;-><init>(Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x1

    const v1, 0x7f0d002e

    new-instance v2, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$5;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$5;-><init>(Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x7

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v3, 0x6

    :goto_0
    nop

    return-void

    const/4 v3, 0x0

    const/4 v3, 0x4

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->finish()V

    goto :goto_0

    const/4 v0, 0x6
.end method

.method public onCancelClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->cancelSnippet()V

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x7

    const/16 v7, 0x23d

    const/4 v6, 0x1

    const/4 v8, 0x6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v8, 0x3

    const v5, 0x7f0a0021

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->setContentView(I)V

    const/4 v8, 0x2

    const v5, 0x7f080152

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mEdtName:Landroid/widget/EditText;

    const/4 v8, 0x0

    const v5, 0x7f080151

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mEdtContents:Landroid/widget/EditText;

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v8, 0x6

    const-string v5, "NEW_OR_VIEW"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mMode:I

    const/4 v8, 0x5

    const-string v5, "FOLDER"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    const/4 v8, 0x6

    const-string v5, "NAME"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    :cond_0
    iget v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mMode:I

    if-eq v5, v7, :cond_1

    const/4 v8, 0x6

    const v5, 0x7f0d0100

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    const/4 v8, 0x5

    iput v7, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mMode:I

    const/4 v8, 0x3

    :cond_1
    iget v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mMode:I

    if-ne v5, v6, :cond_4

    const/4 v8, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    if-nez v5, :cond_2

    const/4 v8, 0x0

    const-string v5, "/"

    iput-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    const/4 v8, 0x2

    :cond_2
    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    invoke-static {v5}, Lcom/henrythompson/quoda/utils/Utils;->normaliseSnippetFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    const/4 v8, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getInstance()Lcom/henrythompson/quoda/snippet/SnippetsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v0

    const/4 v8, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    invoke-virtual {v0, v2, v5}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getSnippetForLocation(Ljava/lang/String;Ljava/lang/String;)Lcom/henrythompson/quoda/snippet/Snippet;

    move-result-object v4

    const/4 v8, 0x1

    if-eqz v4, :cond_3

    const/4 v8, 0x7

    iput-object v4, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    const/4 v8, 0x5

    :goto_0
    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mEdtContents:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->onTextChangedWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v8, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v3

    const/4 v8, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mEdtContents:Landroid/widget/EditText;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/QuodaPreferences;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v6

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getCodeViewBackgroundColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setBackgroundColor(I)V

    const/4 v8, 0x1

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mEdtContents:Landroid/widget/EditText;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/QuodaPreferences;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v6

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/Theme;->getNormalTextStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v6

    invoke-virtual {v6}, Lcom/henrythompson/quoda/styler/StyleSpan;->getColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(I)V

    const/4 v8, 0x2

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mEdtContents:Landroid/widget/EditText;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/QuodaPreferences;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v8, 0x2

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mEdtContents:Landroid/widget/EditText;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/QuodaPreferences;->getFontSize()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextSize(F)V

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mEdtName:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->onTextChangedWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v8, 0x2

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mEdtName:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/snippet/Snippet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mEdtContents:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/snippet/Snippet;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x6

    nop

    return-void

    const/4 v4, 0x3

    const/4 v8, 0x2

    :cond_3
    new-instance v5, Lcom/henrythompson/quoda/snippet/Snippet;

    invoke-direct {v5}, Lcom/henrythompson/quoda/snippet/Snippet;-><init>()V

    iput-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    const/4 v8, 0x4

    const-string v5, "/"

    iput-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    const/4 v8, 0x2

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    iget-object v6, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/snippet/Snippet;->setLocation(Ljava/lang/String;)V

    goto :goto_0

    const/4 v5, 0x6

    const/4 v8, 0x0

    :cond_4
    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    if-nez v5, :cond_5

    const/4 v8, 0x7

    const-string v5, "/"

    iput-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    const/4 v8, 0x5

    :cond_5
    new-instance v5, Lcom/henrythompson/quoda/snippet/Snippet;

    invoke-direct {v5}, Lcom/henrythompson/quoda/snippet/Snippet;-><init>()V

    iput-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    const/4 v8, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mSnippet:Lcom/henrythompson/quoda/snippet/Snippet;

    iget-object v6, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/snippet/Snippet;->setLocation(Ljava/lang/String;)V

    goto/16 :goto_0

    const/4 v4, 0x2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->cancelSnippet()V

    const/4 v1, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x7

    :goto_0
    return v0

    const/4 v1, 0x6

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    const/4 v0, 0x4
.end method

.method public onSaveClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->saveSnippet(Z)V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public saveSnippet(Z)V
    .locals 11

    const/4 v10, 0x6

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x2

    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mEdtName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v10, 0x7

    const v5, 0x7f0d022b

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    const/4 v10, 0x5

    :goto_0
    nop

    return-void

    const/4 v4, 0x2

    const/4 v10, 0x4

    :cond_0
    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    if-eqz v5, :cond_2

    const/4 v10, 0x2

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v10, 0x2

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    const/4 v10, 0x7

    :cond_1
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    const/4 v10, 0x0

    :cond_2
    iget-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mEdtName:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mFilename:Ljava/lang/String;

    const/4 v10, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mParentFolder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".snippet"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x4

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "FOLDER"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    iget v5, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mMode:I

    if-ne v5, v8, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v10, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    const v5, 0x7f0d0228

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mFilename:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x1

    const v5, 0x7f0d0229

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->mFilename:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-virtual {p0, v5, v6}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x3

    const v5, 0x7f0d01a1

    new-instance v6, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$1;

    invoke-direct {v6, p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$1;-><init>(Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;Z)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x2

    const v5, 0x7f0d002e

    new-instance v6, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$2;

    invoke-direct {v6, p0}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity$2;-><init>(Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x7

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    const/4 v10, 0x5

    const/4 v10, 0x4

    :cond_4
    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/snippet/SnippetViewerActivity;->performSave(Z)V

    goto/16 :goto_0

    const/4 v4, 0x1
.end method
