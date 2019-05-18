.class public Lcom/henrythompson/quoda/FileBrowserPanel;
.super Lcom/henrythompson/quoda/AuthHandlingDialogFragment;

# interfaces
.implements Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;
.implements Lcom/henrythompson/quoda/DataEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/FileBrowserPanel$OnCloseFileBrowserPanelListener;
    }
.end annotation


# static fields
.field public static final MODE_OPEN:I = 0x0

.field public static final MODE_SAVE:I = 0x1


# instance fields
.field private mActionbar:Landroid/widget/LinearLayout;

.field private mAuthNeededButton:Landroid/widget/Button;

.field private mAuthNeededContainer:Landroid/widget/LinearLayout;

.field private mAuthNeededException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

.field private mBrowser:Lcom/henrythompson/quoda/FilebrowserFragment;

.field private mBrowserFrame:Landroid/widget/FrameLayout;

.field public mCloseListener:Lcom/henrythompson/quoda/FileBrowserPanel$OnCloseFileBrowserPanelListener;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mDefaultAuthAction:Ljava/lang/Runnable;

.field private mDocument:Lcom/henrythompson/quoda/document/Document;

.field private mEncoding:Ljava/lang/String;

.field private mEncodingButton:Landroid/widget/ImageButton;

.field private mErrorMessage:Landroid/widget/TextView;

.field private mErrorTitle:Landroid/widget/TextView;

.field private mFilebrowserClose:Landroid/widget/ImageButton;

.field private mFilenameBox:Landroid/widget/EditText;

.field private mFilesystemSwitcher:Landroid/widget/Button;

.field private mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

.field private mListener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

.field private mMode:I

.field private mOverflow:Landroid/widget/ImageButton;

.field private mRefreshButton:Landroid/widget/ImageButton;

.field private mSaveButton:Landroid/widget/ImageButton;

.field private mShouldShowAuthorisationButton:Z

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/AuthHandlingDialogFragment;-><init>()V

    const/4 v1, 0x3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mShouldShowAuthorisationButton:Z

    const/4 v1, 0x0

    const-string v0, "filebrowser"

    iput-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mTag:Ljava/lang/String;

    nop

    return-void

    const/4 v0, 0x1
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/FileBrowserPanel;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->showEncodingsDialog()V

    nop

    return-void

    const/4 v0, 0x1
.end method

.method static synthetic access$100(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/FilebrowserFragment;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowser:Lcom/henrythompson/quoda/FilebrowserFragment;

    return-object v0

    const/4 v1, 0x1
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/FileBrowserPanel;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->setInitialFilesystem()V

    nop

    return-void

    const/4 v0, 0x2
.end method

.method static synthetic access$300(Lcom/henrythompson/quoda/FileBrowserPanel;)Landroid/widget/Button;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mAuthNeededButton:Landroid/widget/Button;

    return-object v0

    const/4 v0, 0x5
.end method

.method static synthetic access$400(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FilesystemsManager;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    return-object v0

    const/4 v0, 0x3
.end method

.method static synthetic access$500(Lcom/henrythompson/quoda/FileBrowserPanel;)Landroid/widget/ImageButton;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mSaveButton:Landroid/widget/ImageButton;

    return-object v0

    const/4 v1, 0x7
.end method

.method static synthetic access$600(Lcom/henrythompson/quoda/FileBrowserPanel;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->saveFile()V

    nop

    return-void

    const/4 v0, 0x5
.end method

.method static synthetic access$700(Lcom/henrythompson/quoda/FileBrowserPanel;)Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mListener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    return-object v0

    const/4 v1, 0x1
.end method

.method static synthetic access$800(Lcom/henrythompson/quoda/FileBrowserPanel;Lcom/henrythompson/quoda/filesystem/AuthNeededException;Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x7

    invoke-direct {p0, p1, p2}, Lcom/henrythompson/quoda/FileBrowserPanel;->showAuthorisationButtons(Lcom/henrythompson/quoda/filesystem/AuthNeededException;Ljava/lang/Runnable;)V

    nop

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$902(Lcom/henrythompson/quoda/FileBrowserPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mEncoding:Ljava/lang/String;

    return-object p1

    const/4 v0, 0x7
.end method

.method private attachFilebrowserCloseListener()V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilebrowserClose:Landroid/widget/ImageButton;

    new-instance v1, Lcom/henrythompson/quoda/FileBrowserPanel$9;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/FileBrowserPanel$9;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x6

    nop

    return-void

    const/4 v1, 0x5
.end method

.method private attachFilesystemSwitcherListener()V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilesystemSwitcher:Landroid/widget/Button;

    new-instance v1, Lcom/henrythompson/quoda/FileBrowserPanel$10;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/FileBrowserPanel$10;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x2

    nop

    return-void

    const/4 v0, 0x2
.end method

.method private configureLayoutForDialog(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x3

    const v0, 0x7f080121

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v2, 0x4

    nop

    return-void

    const/4 v0, 0x3
.end method

.method private configureMode()V
    .locals 4

    const/4 v3, 0x7

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x5

    iget v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mMode:I

    if-nez v0, :cond_0

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilenameBox:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mSaveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v3, 0x6

    :goto_0
    nop

    return-void

    const/4 v1, 0x1

    const/4 v3, 0x4

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilenameBox:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilenameBox:Landroid/widget/EditText;

    new-instance v1, Lcom/henrythompson/quoda/FileBrowserPanel$7;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/FileBrowserPanel$7;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mSaveButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mSaveButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/henrythompson/quoda/FileBrowserPanel$8;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/FileBrowserPanel$8;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    const/4 v2, 0x7
.end method

.method public static getBundle(Ljava/lang/String;ILjava/lang/String;Z)Landroid/os/Bundle;
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x6

    const-string v1, "tag"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const-string v1, "documentUuid"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x4

    const-string v1, "mode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x6

    const-string v1, "showAsDialog"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    return-object v0

    const/4 v2, 0x6
.end method

.method private getLastSavedFilesystem()Lcom/henrythompson/quoda/filesystem/Filesystem;
    .locals 6

    const/4 v5, 0x4

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v5, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_filesystem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "local"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    invoke-virtual {v3, v2}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v0

    const/4 v5, 0x0

    if-nez v0, :cond_0

    const/4 v5, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    invoke-virtual {v3, v2}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v0

    const/4 v5, 0x6

    :cond_0
    return-object v0

    const/4 v3, 0x7
.end method

.method private getPositionOfItemInArray(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    const/4 v2, 0x0

    aget-object v1, p2, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    :goto_1
    return v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v1, 0x5

    const/4 v2, 0x0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1

    const/4 v1, 0x1
.end method

.method private hideAuthorisationButtons()V
    .locals 3

    const/4 v2, 0x6

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mAuthNeededException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    const/4 v2, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mDefaultAuthAction:Ljava/lang/Runnable;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mAuthNeededContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowserFrame:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v2, 0x5

    nop

    return-void

    const/4 v0, 0x0
.end method

.method private hideError()V
    .locals 3

    const/4 v2, 0x2

    const/16 v1, 0x8

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mErrorTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public static newInstance(Ljava/lang/String;ILjava/lang/String;Z)Lcom/henrythompson/quoda/FileBrowserPanel;
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x5

    new-instance v1, Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-direct {v1}, Lcom/henrythompson/quoda/FileBrowserPanel;-><init>()V

    const/4 v2, 0x6

    invoke-static {p0, p1, p2, p3}, Lcom/henrythompson/quoda/FileBrowserPanel;->getBundle(Ljava/lang/String;ILjava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    return-object v1

    const/4 v2, 0x7
.end method

.method private onFileSelectedOpen(Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x7

    new-instance v0, Lcom/henrythompson/quoda/document/Document;

    invoke-direct {v0}, Lcom/henrythompson/quoda/document/Document;-><init>()V

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mEncoding:Ljava/lang/String;

    new-instance v2, Lcom/henrythompson/quoda/FileBrowserPanel$11;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/FileBrowserPanel$11;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel;)V

    invoke-static {v0, v1, p1, v2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->openFile(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;Lcom/henrythompson/quoda/filesystem/FileObject;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;)V

    const/4 v3, 0x5

    nop

    return-void

    const/4 v0, 0x4
.end method

.method private onFileSelectedSave(Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilenameBox:Landroid/widget/EditText;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x6

    nop

    return-void

    const/4 v0, 0x1
.end method

.method private saveFile()V
    .locals 8

    const/4 v7, 0x7

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilenameBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/FileBrowserPanel;->validateEnteredFileName(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v7, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0d0093

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const/4 v7, 0x4

    :cond_1
    :goto_0
    nop

    return-void

    const/4 v0, 0x7

    const/4 v7, 0x3

    :cond_2
    new-instance v2, Lcom/henrythompson/quoda/FileBrowserPanel$14;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/FileBrowserPanel$14;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel;)V

    const/4 v7, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilenameBox:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mDocument:Lcom/henrythompson/quoda/document/Document;

    iget-object v4, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowser:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/FilebrowserFragment;->getCurrentFolder()Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v4

    new-instance v5, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;-><init>(Landroid/app/Activity;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;)V

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const/4 v7, 0x4

    invoke-static {v3, v4, v0, v5, v6}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileObject;Ljava/lang/String;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/app/Activity;)V

    const/4 v7, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->dismiss()V

    const/4 v7, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mCloseListener:Lcom/henrythompson/quoda/FileBrowserPanel$OnCloseFileBrowserPanelListener;

    if-eqz v3, :cond_1

    const/4 v7, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mCloseListener:Lcom/henrythompson/quoda/FileBrowserPanel$OnCloseFileBrowserPanelListener;

    invoke-interface {v3}, Lcom/henrythompson/quoda/FileBrowserPanel$OnCloseFileBrowserPanelListener;->onCloseFileBrowserPanel()V

    goto :goto_0

    const/4 v5, 0x1
.end method

.method private saveLastViewedFilesystem(Lcom/henrythompson/quoda/filesystem/Filesystem;)V
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v4, 0x5

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_filesystem"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getUuid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v4, 0x7

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v4, 0x1

    nop

    return-void

    const/4 v4, 0x2
.end method

.method private setInitialFilesystem()V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->getLastSavedFilesystem()Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v3, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    const-string v2, "local"

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v0

    const/4 v3, 0x6

    :cond_0
    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->setFilesystem(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    const/4 v3, 0x3

    nop

    return-void

    const/4 v3, 0x0
.end method

.method private showAuthorisationButtons(Lcom/henrythompson/quoda/filesystem/AuthNeededException;Ljava/lang/Runnable;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mAuthNeededException:Lcom/henrythompson/quoda/filesystem/AuthNeededException;

    const/4 v2, 0x2

    iput-object p2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mDefaultAuthAction:Ljava/lang/Runnable;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mAuthNeededContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowserFrame:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v2, 0x1

    nop

    return-void

    const/4 v1, 0x6
.end method

.method private showEncodingsDialog()V
    .locals 7

    const/4 v6, 0x7

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020001

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mEncoding:Ljava/lang/String;

    const/4 v6, 0x4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x2

    const v4, 0x7f0d00ea

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x2

    invoke-direct {p0, v2, v1}, Lcom/henrythompson/quoda/FileBrowserPanel;->getPositionOfItemInArray(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    const/4 v6, 0x5

    if-gez v3, :cond_0

    const/4 v6, 0x3

    const/4 v3, 0x0

    const/4 v6, 0x6

    :cond_0
    new-instance v4, Lcom/henrythompson/quoda/FileBrowserPanel$15;

    invoke-direct {v4, p0, v1}, Lcom/henrythompson/quoda/FileBrowserPanel$15;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel;[Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x3

    const v4, 0x7f0d018c

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x4

    const v4, 0x7f0d002e

    new-instance v5, Lcom/henrythompson/quoda/FileBrowserPanel$16;

    invoke-direct {v5, p0, v2}, Lcom/henrythompson/quoda/FileBrowserPanel$16;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v6, 0x2

    nop

    return-void

    const/4 v4, 0x7
.end method

.method private showError(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mErrorTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mErrorMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    nop

    return-void

    const/4 v0, 0x3
.end method

.method private validateEnteredFileName(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x5c

    const/4 v3, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x2f

    const/4 v3, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    const/4 v3, 0x6

    :cond_0
    return v0

    const/4 v1, 0x7
.end method


# virtual methods
.method public onAuthNeededException(Lcom/henrythompson/quoda/filesystem/AuthNeededException;Ljava/lang/Runnable;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v3, 0x5

    iget-boolean v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mShouldShowAuthorisationButton:Z

    if-nez v0, :cond_0

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->getAuthActivity()Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/henrythompson/quoda/FileBrowserPanel$12;

    invoke-direct {v1, p0, p2}, Lcom/henrythompson/quoda/FileBrowserPanel$12;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel;Ljava/lang/Runnable;)V

    new-instance v2, Lcom/henrythompson/quoda/FileBrowserPanel$13;

    invoke-direct {v2, p0, p1, p2}, Lcom/henrythompson/quoda/FileBrowserPanel$13;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel;Lcom/henrythompson/quoda/filesystem/AuthNeededException;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/henrythompson/quoda/filesystem/AuthNeededException;->runAuthorisation(Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v3, 0x6

    :goto_0
    nop

    return-void

    const/4 v3, 0x7

    const/4 v3, 0x1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mShouldShowAuthorisationButton:Z

    const/4 v3, 0x7

    invoke-direct {p0, p1, p2}, Lcom/henrythompson/quoda/FileBrowserPanel;->showAuthorisationButtons(Lcom/henrythompson/quoda/filesystem/AuthNeededException;Ljava/lang/Runnable;)V

    goto :goto_0

    const/4 v1, 0x5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    invoke-super {p0, p1}, Lcom/henrythompson/quoda/AuthHandlingDialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v5, 0x2

    if-nez v0, :cond_0

    const/4 v5, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x6

    :cond_0
    const-string v2, "tag"

    const-string v3, "filebrowserpanel"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mTag:Ljava/lang/String;

    const/4 v5, 0x3

    const-string v2, "mode"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mMode:I

    const/4 v5, 0x5

    iget v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v5, 0x1

    const-string v2, "documentUuid"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocumentById(Ljava/lang/String;)Lcom/henrythompson/quoda/document/Document;

    move-result-object v2

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mDocument:Lcom/henrythompson/quoda/document/Document;

    const/4 v5, 0x5

    :cond_1
    const-string v2, "showAsDialog"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/FileBrowserPanel;->setShowsDialog(Z)V

    const/4 v5, 0x4

    nop

    return-void

    const/4 v4, 0x5
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x3

    invoke-super {p0, p1}, Lcom/henrythompson/quoda/AuthHandlingDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    const/4 v3, 0x0

    return-object v0

    const/4 v2, 0x4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x2

    const v5, 0x7f080127

    const/4 v4, 0x0

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v6, 0x3

    const v2, 0x7f0a0053

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v6, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/QuodaPreferences;->getEncodingOpen()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mEncoding:Ljava/lang/String;

    const/4 v6, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/henrythompson/quoda/DataController;->attachListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v6, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    const/4 v6, 0x7

    const v2, 0x7f080122

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v6, 0x3

    const v2, 0x7f08012c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilesystemSwitcher:Landroid/widget/Button;

    const/4 v6, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->attachFilesystemSwitcherListener()V

    const/4 v6, 0x3

    const v2, 0x7f08011e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mActionbar:Landroid/widget/LinearLayout;

    const/4 v6, 0x4

    const v2, 0x7f080123

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mEncodingButton:Landroid/widget/ImageButton;

    const/4 v6, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mEncodingButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/henrythompson/quoda/FileBrowserPanel$1;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/FileBrowserPanel$1;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v6, 0x4

    const v2, 0x7f080129

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mRefreshButton:Landroid/widget/ImageButton;

    const/4 v6, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mRefreshButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/henrythompson/quoda/FileBrowserPanel$2;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/FileBrowserPanel$2;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v6, 0x7

    const v2, 0x7f080128

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mOverflow:Landroid/widget/ImageButton;

    const/4 v6, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mOverflow:Landroid/widget/ImageButton;

    new-instance v3, Lcom/henrythompson/quoda/FileBrowserPanel$3;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/FileBrowserPanel$3;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v6, 0x4

    const v2, 0x7f08011f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mAuthNeededButton:Landroid/widget/Button;

    const/4 v6, 0x2

    const v2, 0x7f080120

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mAuthNeededContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x6

    const v2, 0x7f080124

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mErrorMessage:Landroid/widget/TextView;

    const/4 v6, 0x6

    const v2, 0x7f080125

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mErrorTitle:Landroid/widget/TextView;

    const/4 v6, 0x4

    const v2, 0x7f080121

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilebrowserClose:Landroid/widget/ImageButton;

    const/4 v6, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->attachFilebrowserCloseListener()V

    const/4 v6, 0x6

    const v2, 0x7f080126

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilenameBox:Landroid/widget/EditText;

    const/4 v6, 0x1

    const v2, 0x7f08012a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mSaveButton:Landroid/widget/ImageButton;

    const/4 v6, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->configureMode()V

    const/4 v6, 0x5

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowserFrame:Landroid/widget/FrameLayout;

    const/4 v6, 0x0

    new-instance v2, Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-direct {v2}, Lcom/henrythompson/quoda/FilebrowserFragment;-><init>()V

    iput-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowser:Lcom/henrythompson/quoda/FilebrowserFragment;

    const/4 v6, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v6, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowser:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v0, v5, v2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v6, 0x5

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v6, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowser:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v2, p0}, Lcom/henrythompson/quoda/FilebrowserFragment;->setListener(Lcom/henrythompson/quoda/FilebrowserFragment$FilebrowserListener;)V

    const/4 v6, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowser:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v2, v4}, Lcom/henrythompson/quoda/FilebrowserFragment;->setRetainInstance(Z)V

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowser:Lcom/henrythompson/quoda/FilebrowserFragment;

    new-instance v3, Lcom/henrythompson/quoda/FileBrowserPanel$4;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/FileBrowserPanel$4;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel;)V

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/FilebrowserFragment;->runOnSetupComplete(Ljava/lang/Runnable;)V

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->getShowsDialog()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v6, 0x3

    invoke-direct {p0, v1}, Lcom/henrythompson/quoda/FileBrowserPanel;->configureLayoutForDialog(Landroid/view/View;)V

    const/4 v6, 0x7

    :cond_0
    iget v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v6, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilenameBox:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mDocument:Lcom/henrythompson/quoda/document/Document;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilenameBox:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->selectAll()V

    const/4 v6, 0x1

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mAuthNeededButton:Landroid/widget/Button;

    new-instance v3, Lcom/henrythompson/quoda/FileBrowserPanel$5;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/FileBrowserPanel$5;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v6, 0x5

    :goto_0
    return-object v1

    const/4 v0, 0x4

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/henrythompson/quoda/AuthHandlingDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    const/4 v1, 0x2
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x6

    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingDialogFragment;->onDestroyView()V

    const/4 v1, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/henrythompson/quoda/DataController;->removeListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x6
.end method

.method public onFileSelected(Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x2

    iget v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mMode:I

    if-nez v0, :cond_1

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/FileBrowserPanel;->onFileSelectedOpen(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    const/4 v2, 0x1

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x1

    const/4 v2, 0x0

    :cond_1
    iget v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x4

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/FileBrowserPanel;->onFileSelectedSave(Lcom/henrythompson/quoda/filesystem/FileObject;)V

    goto :goto_0

    const/4 v0, 0x3
.end method

.method public onFilesystemException(Lcom/henrythompson/quoda/filesystem/FilesystemException;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    invoke-virtual {p1}, Lcom/henrythompson/quoda/filesystem/FilesystemException;->getUserMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/FileBrowserPanel;->showError(Ljava/lang/String;)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public onFilesystemsSpinnerClick()V
    .locals 15

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const-string v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    new-instance v7, Landroid/widget/PopupWindow;

    const v11, 0x7f0a0050

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v4, v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    iget-object v12, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v12}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v12

    const/4 v13, -0x2

    const/4 v14, 0x1

    invoke-direct {v7, v11, v12, v13, v14}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0800ac

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v11, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->list()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/henrythompson/quoda/filesystem/Filesystem;

    new-instance v12, Lcom/henrythompson/quoda/ListItem;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getDisplayName()Ljava/lang/String;

    move-result-object v13

    const-string v14, ""

    invoke-direct {v12, v13, v14}, Lcom/henrythompson/quoda/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getUuid()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v12, 0x3

    :cond_0
    iget-object v11, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    const-string v12, "google_drive"

    invoke-virtual {v11, v12}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v11

    if-nez v11, :cond_1

    new-instance v11, Lcom/henrythompson/quoda/ListItem;

    const v12, 0x7f0d010d

    invoke-virtual {p0, v12}, Lcom/henrythompson/quoda/FileBrowserPanel;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-direct {v11, v12, v13}, Lcom/henrythompson/quoda/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v11, "addgdrive"

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v11, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    const-string v12, "dropbox"

    invoke-virtual {v11, v12}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v11

    if-nez v11, :cond_2

    new-instance v11, Lcom/henrythompson/quoda/ListItem;

    const v12, 0x7f0d010c

    invoke-virtual {p0, v12}, Lcom/henrythompson/quoda/FileBrowserPanel;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-direct {v11, v12, v13}, Lcom/henrythompson/quoda/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v11, "adddropbox"

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v11, Lcom/henrythompson/quoda/ListItem;

    const v12, 0x7f0d0028

    invoke-virtual {p0, v12}, Lcom/henrythompson/quoda/FileBrowserPanel;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, ""

    invoke-direct {v11, v12, v13}, Lcom/henrythompson/quoda/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v11, "addserver"

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/henrythompson/quoda/ListItemAdapter;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    const v12, 0x7f0a004f

    invoke-direct {v0, v11, v12, v5}, Lcom/henrythompson/quoda/ListItemAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v11, Lcom/henrythompson/quoda/FileBrowserPanel$17;

    invoke-direct {v11, p0, v3, v7}, Lcom/henrythompson/quoda/FileBrowserPanel$17;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel;Ljava/util/List;Landroid/widget/PopupWindow;)V

    invoke-virtual {v6, v11}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v11, 0x1030002

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const/4 v11, 0x2

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    new-instance v11, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v11, 0x2

    new-array v1, v11, [I

    iget-object v11, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v1}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    const/4 v11, 0x2

    new-array v8, v11, [I

    iget-object v11, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilesystemSwitcher:Landroid/widget/Button;

    invoke-virtual {v11, v8}, Landroid/widget/Button;->getLocationOnScreen([I)V

    const/4 v11, 0x0

    aget v9, v1, v11

    const/4 v11, 0x1

    aget v10, v8, v11

    iget-object v11, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilesystemSwitcher:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    nop

    return-void

    const/4 v2, 0x7
.end method

.method public onFolderListStart(Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->hideAuthorisationButtons()V

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->hideError()V

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public onFolderListed(Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowser:Lcom/henrythompson/quoda/FilebrowserFragment;

    iget-object v1, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->saveLocation(Ljava/lang/String;)V

    const/4 v2, 0x6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mShouldShowAuthorisationButton:Z

    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->hideAuthorisationButtons()V

    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->hideError()V

    const/4 v2, 0x4

    nop

    return-void

    const/4 v2, 0x2
.end method

.method public onReceiveCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    const/4 v0, 0x0

    return v0

    const/4 v0, 0x5
.end method

.method public onReceiveEvent(I[Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x4

    :goto_0
    nop

    return-void

    const/4 v1, 0x5

    const/4 v1, 0x6

    :pswitch_0
    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowser:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/FilebrowserFragment;->refresh()V

    goto :goto_0

    const/4 v0, 0x5

    const/4 v1, 0x5

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    const/4 v3, 0x6

    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingDialogFragment;->onResume()V

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowser:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->getFilesystem()Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v0

    const/4 v3, 0x3

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilesystems:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowser:Lcom/henrythompson/quoda/FilebrowserFragment;

    new-instance v2, Lcom/henrythompson/quoda/FileBrowserPanel$6;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/FileBrowserPanel$6;-><init>(Lcom/henrythompson/quoda/FileBrowserPanel;)V

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/FilebrowserFragment;->runOnSetupComplete(Ljava/lang/Runnable;)V

    const/4 v3, 0x6

    :cond_0
    nop

    return-void

    const/4 v1, 0x3
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingDialogFragment;->onStart()V

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setCloseFileBrowserPanelListener(Lcom/henrythompson/quoda/FileBrowserPanel$OnCloseFileBrowserPanelListener;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mCloseListener:Lcom/henrythompson/quoda/FileBrowserPanel$OnCloseFileBrowserPanelListener;

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setFilesystem(Lcom/henrythompson/quoda/filesystem/Filesystem;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/FileBrowserPanel;->hideAuthorisationButtons()V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowser:Lcom/henrythompson/quoda/FilebrowserFragment;

    iget-object v1, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->saveLocation(Ljava/lang/String;)V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowser:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/FilebrowserFragment;->setFilesystem(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mFilesystemSwitcher:Landroid/widget/Button;

    iget-object v1, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowser:Lcom/henrythompson/quoda/FilebrowserFragment;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->getFilesystem()Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mBrowser:Lcom/henrythompson/quoda/FilebrowserFragment;

    iget-object v1, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/FilebrowserFragment;->browseLastSavedLocation(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/FileBrowserPanel;->saveLastViewedFilesystem(Lcom/henrythompson/quoda/filesystem/Filesystem;)V

    const/4 v2, 0x4

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public setFilesystemOperationListener(Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/FileBrowserPanel;->mListener:Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x1
.end method
