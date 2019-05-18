.class public Lcom/henrythompson/quoda/EditorPanel;
.super Lcom/henrythompson/quoda/AuthHandlingFragment;

# interfaces
.implements Lcom/henrythompson/quoda/DataEventListener;
.implements Lcom/henrythompson/quoda/CodeView$ShortcutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;
    }
.end annotation


# instance fields
.field private mActionbar:Landroid/widget/RelativeLayout;

.field private mAdditionalKeys:Landroid/widget/LinearLayout;

.field mCaseSensitiveChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mCodeView:Lcom/henrythompson/quoda/CodeView;

.field private mContainer:Landroid/widget/RelativeLayout;

.field private mDocumentSwitcher:Landroid/widget/Button;

.field private mDocumentSwitcherFragment:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;

.field private mDocumentSwitcherListener:Landroid/view/View$OnClickListener;

.field private mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mEditButton:Landroid/widget/ImageButton;

.field private mFeedbackDialog:Lcom/suredigit/inappfeedback/FeedbackDialog;

.field private mFileBrowserDrawerFragment:Lcom/henrythompson/quoda/FileBrowserPanel;

.field private mFileButton:Landroid/widget/ImageButton;

.field private mFilesystemsManager:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

.field private mFindBackButton:Landroid/widget/ImageButton;

.field private mFindButton:Landroid/widget/ImageButton;

.field private mFindListener:Lcom/henrythompson/quoda/FindEngine$FindListener;

.field private mFindNextButton:Landroid/widget/ImageButton;

.field private mFindOverflowButton:Landroid/widget/ImageButton;

.field private mFindbar:Landroid/view/View;

.field private mFindbarFindText:Landroid/widget/EditText;

.field private mFindbarReplaceText:Landroid/widget/EditText;

.field private mOverflowButton:Landroid/widget/ImageButton;

.field private mParent:Lcom/henrythompson/quoda/EditorActivity;

.field private mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

.field private mPreviewButton:Landroid/widget/ImageButton;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRedoButton:Landroid/widget/ImageButton;

.field mRegexChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mReplaceAllButton:Landroid/widget/ImageButton;

.field private mReplaceButton:Landroid/widget/ImageButton;

.field private mReplaceLayout:Landroid/widget/LinearLayout;

.field private mSaveButton:Landroid/widget/ImageButton;

.field private mScrollerWidget:Lcom/henrythompson/quoda/ScrollerWidget;

.field private mShowFileBrowserButton:Landroid/widget/ImageButton;

.field private mShowFileBrowserDivider:Landroid/view/View;

.field private mToolsButton:Landroid/widget/ImageButton;

.field private mUndoButton:Landroid/widget/ImageButton;

.field private onActionbarItemClickListener:Landroid/view/View$OnClickListener;

.field private onCodeViewTextChanged:Landroid/text/TextWatcher;

.field private onFindNextClickListener:Landroid/view/View$OnClickListener;

.field private onFindOverflowClickListener:Landroid/view/View$OnClickListener;

.field private onFindPreviousClickListener:Landroid/view/View$OnClickListener;

.field private onFindTextChanged:Landroid/text/TextWatcher;

.field private onReplaceAllClickListener:Landroid/view/View$OnClickListener;

.field private onReplaceClickListener:Landroid/view/View$OnClickListener;

.field private selectedEncoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/AuthHandlingFragment;-><init>()V

    const/4 v1, 0x1

    new-instance v0, Lcom/henrythompson/quoda/EditorPanel$1;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/EditorPanel$1;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentSwitcherListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x7

    new-instance v0, Lcom/henrythompson/quoda/EditorPanel$2;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/EditorPanel$2;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->onFindNextClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x2

    new-instance v0, Lcom/henrythompson/quoda/EditorPanel$3;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/EditorPanel$3;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->onFindPreviousClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x2

    new-instance v0, Lcom/henrythompson/quoda/EditorPanel$4;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/EditorPanel$4;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindListener:Lcom/henrythompson/quoda/FindEngine$FindListener;

    const/4 v1, 0x4

    new-instance v0, Lcom/henrythompson/quoda/EditorPanel$5;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/EditorPanel$5;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->onFindOverflowClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x5

    new-instance v0, Lcom/henrythompson/quoda/EditorPanel$6;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/EditorPanel$6;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->onReplaceClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x5

    new-instance v0, Lcom/henrythompson/quoda/EditorPanel$7;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/EditorPanel$7;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->onReplaceAllClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x2

    new-instance v0, Lcom/henrythompson/quoda/EditorPanel$8;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/EditorPanel$8;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mRegexChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v1, 0x1

    new-instance v0, Lcom/henrythompson/quoda/EditorPanel$9;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/EditorPanel$9;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCaseSensitiveChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const/4 v1, 0x6

    new-instance v0, Lcom/henrythompson/quoda/EditorPanel$10;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/EditorPanel$10;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->onFindTextChanged:Landroid/text/TextWatcher;

    const/4 v1, 0x4

    new-instance v0, Lcom/henrythompson/quoda/EditorPanel$11;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/EditorPanel$11;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->onCodeViewTextChanged:Landroid/text/TextWatcher;

    const/4 v1, 0x3

    new-instance v0, Lcom/henrythompson/quoda/EditorPanel$12;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/EditorPanel$12;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->onActionbarItemClickListener:Landroid/view/View$OnClickListener;

    nop

    return-void

    const/4 v1, 0x0
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/CodeView;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    return-object v0

    const/4 v0, 0x2
.end method

.method static synthetic access$100(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/QuodaPreferences;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    return-object v0

    const/4 v0, 0x5
.end method

.method static synthetic access$1000(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mUndoButton:Landroid/widget/ImageButton;

    return-object v0

    const/4 v0, 0x0
.end method

.method static synthetic access$1100(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mRedoButton:Landroid/widget/ImageButton;

    return-object v0

    const/4 v0, 0x6
.end method

.method static synthetic access$1200(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mSaveButton:Landroid/widget/ImageButton;

    return-object v0

    const/4 v1, 0x1
.end method

.method static synthetic access$1300(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mShowFileBrowserButton:Landroid/widget/ImageButton;

    return-object v0

    const/4 v0, 0x7
.end method

.method static synthetic access$1400(Lcom/henrythompson/quoda/EditorPanel;)Landroid/support/v4/widget/DrawerLayout;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0

    const/4 v0, 0x1
.end method

.method static synthetic access$1500(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentSwitcherFragment:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;

    return-object v0

    const/4 v1, 0x2
.end method

.method static synthetic access$1600(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/ScrollerWidget;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mScrollerWidget:Lcom/henrythompson/quoda/ScrollerWidget;

    return-object v0

    const/4 v1, 0x0
.end method

.method static synthetic access$1700(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/RelativeLayout;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mActionbar:Landroid/widget/RelativeLayout;

    return-object v0

    const/4 v0, 0x3
.end method

.method static synthetic access$1800(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ProgressBar;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0

    const/4 v1, 0x3
.end method

.method static synthetic access$1900(Lcom/henrythompson/quoda/EditorPanel;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorPanel;->configureUndoButtons()V

    nop

    return-void

    const/4 v0, 0x5
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/EditorPanel;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbar:Landroid/view/View;

    return-object v0

    const/4 v1, 0x7
.end method

.method static synthetic access$2000(Lcom/henrythompson/quoda/EditorPanel;ZLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/henrythompson/quoda/EditorPanel;->previewBrowserPicker(ZLjava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$2100(Lcom/henrythompson/quoda/EditorPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/EditorPanel;->convertToMarkdown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x3
.end method

.method static synthetic access$2200(Lcom/henrythompson/quoda/EditorPanel;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorPanel;->showErrorPreviewingFileDialog()V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static synthetic access$2300(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/EditorPanel;->previewInBrowserFromTempFile(Lcom/henrythompson/quoda/document/Document;)V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static synthetic access$2400(Lcom/henrythompson/quoda/EditorPanel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/henrythompson/quoda/EditorPanel;->previewInBrowser(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    const/4 v0, 0x2
.end method

.method static synthetic access$2500(Lcom/henrythompson/quoda/EditorPanel;)Lcom/henrythompson/quoda/document/DocumentsManager;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    return-object v0

    const/4 v1, 0x4
.end method

.method static synthetic access$2600(Lcom/henrythompson/quoda/EditorPanel;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->selectedEncoding:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x7
.end method

.method static synthetic access$2602(Lcom/henrythompson/quoda/EditorPanel;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/EditorPanel;->selectedEncoding:Ljava/lang/String;

    return-object p1

    const/4 v0, 0x3
.end method

.method static synthetic access$2700(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2}, Lcom/henrythompson/quoda/EditorPanel;->reopenWithEncoding(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x1
.end method

.method static synthetic access$2800(Lcom/henrythompson/quoda/EditorPanel;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/EditorPanel;->showUnsupportedEncodingDialog(Ljava/lang/String;)V

    nop

    return-void

    const/4 v0, 0x4
.end method

.method static synthetic access$2900(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/LinearLayout;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mReplaceLayout:Landroid/widget/LinearLayout;

    return-object v0

    const/4 v1, 0x6
.end method

.method static synthetic access$300(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mOverflowButton:Landroid/widget/ImageButton;

    return-object v0

    const/4 v1, 0x0
.end method

.method static synthetic access$400(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFileButton:Landroid/widget/ImageButton;

    return-object v0

    const/4 v1, 0x2
.end method

.method static synthetic access$500(Lcom/henrythompson/quoda/EditorPanel;I)Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/EditorPanel;->onOptionsItemSelected(I)Z

    move-result v0

    return v0

    const/4 v0, 0x6
.end method

.method static synthetic access$600(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mEditButton:Landroid/widget/ImageButton;

    return-object v0

    const/4 v0, 0x1
.end method

.method static synthetic access$700(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindButton:Landroid/widget/ImageButton;

    return-object v0

    const/4 v0, 0x7
.end method

.method static synthetic access$800(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mToolsButton:Landroid/widget/ImageButton;

    return-object v0

    const/4 v1, 0x7
.end method

.method static synthetic access$900(Lcom/henrythompson/quoda/EditorPanel;)Landroid/widget/ImageButton;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreviewButton:Landroid/widget/ImageButton;

    return-object v0

    const/4 v0, 0x3
.end method

.method private configureUndoButtons()V
    .locals 5

    const/4 v4, 0x3

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/UndoStack;->canUndo()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mUndoButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700ce

    const/4 v4, 0x4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x6

    :goto_0
    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getRedoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/UndoStack;->canUndo()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mRedoButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700c4

    const/4 v4, 0x6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x7

    :goto_1
    nop

    return-void

    const/4 v3, 0x4

    const/4 v4, 0x2

    :cond_0
    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mUndoButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700cd

    const/4 v4, 0x5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    const/4 v2, 0x7

    const/4 v4, 0x7

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mRedoButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700c3

    const/4 v4, 0x2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    const/4 v0, 0x1
.end method

.method private convertToMarkdown(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x0

    :try_start_0
    new-instance v1, Lorg/markdown4j/Markdown4jProcessor;

    invoke-direct {v1}, Lorg/markdown4j/Markdown4jProcessor;-><init>()V

    invoke-virtual {v1, p1}, Lorg/markdown4j/Markdown4jProcessor;->process(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v4, 0x1

    :goto_0
    return-object v1

    const/4 v1, 0x5

    const/4 v4, 0x7

    :catch_0
    move-exception v0

    const/4 v4, 0x3

    const-string v1, "EditorPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Markdown4jProcessor threw an exception when converting Markdown to HTML for Preview with message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    const/4 v1, 0x0

    goto :goto_0

    const/4 v1, 0x7
.end method

.method private displayNextDocument()V
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocumentIndex()I

    move-result v1

    const/4 v3, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocumentCount()I

    move-result v0

    const/4 v3, 0x5

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v3, 0x3

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v2, v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->displayDocument(I)Z

    const/4 v3, 0x5

    nop

    return-void

    const/4 v1, 0x2

    const/4 v3, 0x4

    :cond_0
    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_1

    const/4 v3, 0x5

    const/4 v1, 0x0

    goto :goto_0

    const/4 v0, 0x7

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v1, 0x7
.end method

.method private displayPreviousDocument()V
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocumentIndex()I

    move-result v1

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocumentCount()I

    move-result v0

    const/4 v3, 0x4

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x7

    :goto_0
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v2, v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->displayDocument(I)Z

    const/4 v3, 0x4

    nop

    return-void

    const/4 v0, 0x5

    const/4 v3, 0x5

    :cond_0
    if-nez v1, :cond_1

    const/4 v3, 0x2

    add-int/lit8 v1, v0, -0x1

    goto :goto_0

    const/4 v2, 0x4

    const/4 v3, 0x5

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    const/4 v3, 0x5
.end method

.method private fetchViews()V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f08011d

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mShowFileBrowserButton:Landroid/widget/ImageButton;

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mShowFileBrowserDivider:Landroid/view/View;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mOverflowButton:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mUndoButton:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mRedoButton:Landroid/widget/ImageButton;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mSaveButton:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreviewButton:Landroid/widget/ImageButton;

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindButton:Landroid/widget/ImageButton;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFileButton:Landroid/widget/ImageButton;

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mEditButton:Landroid/widget/ImageButton;

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mToolsButton:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f08011b

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f0800b5

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindNextButton:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f0800b2

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindBackButton:Landroid/widget/ImageButton;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f0800b6

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindOverflowButton:Landroid/widget/ImageButton;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f0800b9

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mReplaceLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f0800b7

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mReplaceButton:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f0800b8

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mReplaceAllButton:Landroid/widget/ImageButton;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f0800aa

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentSwitcher:Landroid/widget/Button;

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f0800a8

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mActionbar:Landroid/widget/RelativeLayout;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbar:Landroid/view/View;

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f0800b4

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbarFindText:Landroid/widget/EditText;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f0800ba

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbarReplaceText:Landroid/widget/EditText;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f08013f

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/ScrollerWidget;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mScrollerWidget:Lcom/henrythompson/quoda/ScrollerWidget;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f0800a9

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/CodeView;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f080119

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mAdditionalKeys:Landroid/widget/LinearLayout;

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f08011a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentSwitcherFragment:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f08011c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/FileBrowserPanel;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFileBrowserDrawerFragment:Lcom/henrythompson/quoda/FileBrowserPanel;

    const/4 v2, 0x7

    nop

    return-void

    const/4 v1, 0x7
.end method

.method private getFilesystemsName(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/filesystem/Filesystem;",
            ">;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    const/4 v3, 0x4

    const/4 v3, 0x3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v3, 0x5

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/henrythompson/quoda/filesystem/Filesystem;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v3, 0x6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v1, 0x1

    const/4 v3, 0x4

    :cond_0
    return-object v1

    const/4 v3, 0x5
.end method

.method private initialiseFeedbackDialog()V
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x5

    new-instance v0, Lcom/suredigit/inappfeedback/FeedbackSettings;

    invoke-direct {v0}, Lcom/suredigit/inappfeedback/FeedbackSettings;-><init>()V

    const/4 v4, 0x3

    const v1, 0x7f0d002e

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/suredigit/inappfeedback/FeedbackSettings;->setCancelButtonText(Ljava/lang/String;)V

    const/4 v4, 0x4

    const v1, 0x7f0d00ca

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/suredigit/inappfeedback/FeedbackSettings;->setSendButtonText(Ljava/lang/String;)V

    const/4 v4, 0x0

    const v1, 0x7f0d00c8

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/suredigit/inappfeedback/FeedbackSettings;->setText(Ljava/lang/String;)V

    const/4 v4, 0x1

    const v1, 0x7f0d00cc

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/suredigit/inappfeedback/FeedbackSettings;->setTitle(Ljava/lang/String;)V

    const/4 v4, 0x0

    const v1, 0x7f0d00cb

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/suredigit/inappfeedback/FeedbackSettings;->setToast(Ljava/lang/String;)V

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/suredigit/inappfeedback/FeedbackSettings;->setRadioButtons(Z)V

    const/4 v4, 0x4

    const v1, 0x7f0d00c9

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/suredigit/inappfeedback/FeedbackSettings;->setReplyTitle(Ljava/lang/String;)V

    const/4 v4, 0x4

    new-instance v1, Lcom/suredigit/inappfeedback/FeedbackDialog;

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const-string v3, "AF-0C1814CD1F4C-72"

    invoke-direct {v1, v2, v3, v0}, Lcom/suredigit/inappfeedback/FeedbackDialog;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/suredigit/inappfeedback/FeedbackSettings;)V

    iput-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mFeedbackDialog:Lcom/suredigit/inappfeedback/FeedbackDialog;

    const/4 v4, 0x6

    nop

    return-void

    const/4 v1, 0x0
.end method

.method private onFeedbackClick()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFeedbackDialog:Lcom/suredigit/inappfeedback/FeedbackDialog;

    invoke-virtual {v0}, Lcom/suredigit/inappfeedback/FeedbackDialog;->show()V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x1
.end method

.method private onOptionsItemSelected(I)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v5, 0x7

    new-instance v2, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/4 v5, 0x5

    invoke-virtual {p0, v2, v0}, Lcom/henrythompson/quoda/EditorPanel;->inflateMenuXml(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v5, 0x4

    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v5, 0x5

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    const/4 v5, 0x7

    if-nez v3, :cond_0

    const/4 v5, 0x5

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorPanel;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    const/4 v5, 0x7

    :goto_0
    const/4 v4, 0x1

    return v4

    const/4 v2, 0x2

    const/4 v5, 0x3

    :cond_0
    invoke-virtual {p0, v3, p1}, Lcom/henrythompson/quoda/EditorPanel;->displaySubMenu(Landroid/view/SubMenu;I)V

    goto :goto_0

    const/4 v5, 0x4
.end method

.method private previewBrowserPicker(ZLjava/lang/String;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v11, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v11, 0x6

    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x3

    const-string v9, "http://www.getquoda.com"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v11, 0x0

    const/high16 v9, 0x10000

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    const/4 v11, 0x6

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_0

    const/4 v11, 0x6

    const v9, 0x7f0d00d9

    invoke-virtual {p0, v9}, Lcom/henrythompson/quoda/EditorPanel;->showToast(I)V

    const/4 v11, 0x4

    :goto_0
    nop

    return-void

    const/4 v8, 0x2

    const/4 v11, 0x5

    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_1

    const/4 v11, 0x2

    const/4 v9, 0x0

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    iget-object v4, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v11, 0x5

    iget-object v9, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v9, v10}, Lcom/henrythompson/quoda/EditorPanel;->previewInBrowser(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    const/4 v0, 0x6

    const/4 v11, 0x6

    :cond_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x5

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    const/4 v11, 0x1

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8, v10}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v11, 0x6

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v10, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v11, 0x6

    new-instance v1, Lcom/henrythompson/quoda/BrowserListAdapter$Browser;

    invoke-direct {v1}, Lcom/henrythompson/quoda/BrowserListAdapter$Browser;-><init>()V

    const/4 v11, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/henrythompson/quoda/BrowserListAdapter$Browser;->name:Ljava/lang/String;

    const/4 v11, 0x0

    iput-object v3, v1, Lcom/henrythompson/quoda/BrowserListAdapter$Browser;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v11, 0x6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    const/4 v6, 0x5

    const/4 v11, 0x1

    :cond_2
    new-instance v0, Lcom/henrythompson/quoda/BrowserListAdapter;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-direct {v0, v9, v6}, Lcom/henrythompson/quoda/BrowserListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    const/4 v11, 0x5

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x7f0d009f

    invoke-virtual {p0, v10}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/henrythompson/quoda/EditorPanel$24;

    invoke-direct {v10, p0, v7, p1, p2}, Lcom/henrythompson/quoda/EditorPanel$24;-><init>(Lcom/henrythompson/quoda/EditorPanel;Ljava/util/List;ZLjava/lang/String;)V

    invoke-virtual {v9, v0, v10}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const/4 v11, 0x4

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    const/4 v11, 0x2
.end method

.method private previewInBrowser(Lcom/henrythompson/quoda/document/Document;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x3

    invoke-static {p1}, Lcom/henrythompson/quoda/utils/Utils;->documentHasFilepath(Lcom/henrythompson/quoda/document/Document;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/EditorPanel;->previewInBrowserFromTempFile(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v2, 0x0

    :goto_0
    nop

    return-void

    const/4 v1, 0x1

    const/4 v2, 0x3

    :cond_0
    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFilesystem()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x6

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "markdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x6

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/EditorPanel;->previewInBrowserFromTempFile(Lcom/henrythompson/quoda/document/Document;)V

    goto :goto_0

    const/4 v2, 0x6

    const/4 v2, 0x7

    :cond_1
    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/EditorPanel;->previewInBrowserFromLocalFile(Lcom/henrythompson/quoda/document/Document;)V

    goto :goto_0

    const/4 v2, 0x1

    const/4 v2, 0x1

    :cond_2
    invoke-static {p1}, Lcom/henrythompson/quoda/utils/Utils;->documentHasBaseUrl(Lcom/henrythompson/quoda/document/Document;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x5

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/EditorPanel;->previewInBrowserFromBaseUrl(Lcom/henrythompson/quoda/document/Document;)V

    goto :goto_0

    const/4 v0, 0x2

    const/4 v2, 0x7

    :cond_3
    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/EditorPanel;->previewInBrowserFromTempFile(Lcom/henrythompson/quoda/document/Document;)V

    goto :goto_0

    const/4 v2, 0x5
.end method

.method private previewInBrowser(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v6, 0x5

    if-eqz p1, :cond_0

    const/4 v6, 0x4

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x2

    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v6, 0x5

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v6, 0x0

    const/high16 v4, 0x10000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v6, 0x0

    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x4

    invoke-virtual {v1, p3, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorPanel;->startActivity(Landroid/content/Intent;)V

    const/4 v6, 0x4

    :goto_1
    return v3

    const/4 v3, 0x3

    const/4 v6, 0x4

    :cond_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    const/4 v2, 0x7

    const/4 v6, 0x4

    :catch_0
    move-exception v0

    const/4 v6, 0x0

    const v3, 0x7f0d00fb

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/EditorPanel;->showToast(Ljava/lang/String;)V

    const/4 v6, 0x4

    const-string v3, "EditorPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to preview file in browser with remote URL due to Exception with message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x5

    const/4 v3, 0x0

    goto :goto_1

    const/4 v2, 0x1
.end method

.method private previewInBrowserFromBaseUrl(Lcom/henrythompson/quoda/document/Document;)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x7

    const v3, 0x7f0d00da

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getBaseURL()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x2

    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const v3, 0x7f0d00dc

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    aput-object v2, v1, v7

    const/4 v8, 0x7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x6

    const v3, 0x7f0d00db

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x6

    new-instance v3, Lcom/henrythompson/quoda/EditorPanel$23;

    invoke-direct {v3, p0, p1}, Lcom/henrythompson/quoda/EditorPanel$23;-><init>(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x2

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v8, 0x0

    nop

    return-void

    const/4 v5, 0x2
.end method

.method private previewInBrowserFromLocalFile(Lcom/henrythompson/quoda/document/Document;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v5, 0x2

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getIsSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v5, 0x2

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->previewBrowserPicker(ZLjava/lang/String;)V

    const/4 v5, 0x0

    :goto_0
    nop

    return-void

    const/4 v2, 0x6

    const/4 v5, 0x6

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    new-instance v1, Lcom/henrythompson/quoda/EditorPanel$21;

    invoke-direct {v1, p0, p1}, Lcom/henrythompson/quoda/EditorPanel$21;-><init>(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;)V

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    new-instance v4, Lcom/henrythompson/quoda/EditorPanel$22;

    invoke-direct {v4, p0}, Lcom/henrythompson/quoda/EditorPanel$22;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    const/4 v5, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->showSaveDialog(Lcom/henrythompson/quoda/document/Document;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/support/v4/app/FragmentActivity;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;)V

    goto :goto_0

    const/4 v3, 0x0
.end method

.method private previewInBrowserFromTempFile(Lcom/henrythompson/quoda/document/Document;)V
    .locals 9

    const/4 v8, 0x6

    const/4 v8, 0x4

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/henrythompson/quoda/utils/Utils;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x4

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getText()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x2

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v6

    invoke-virtual {v6}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "markdown"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v8, 0x4

    const-string v1, "html"

    const/4 v8, 0x2

    invoke-direct {p0, v5}, Lcom/henrythompson/quoda/EditorPanel;->convertToMarkdown(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    :cond_0
    sget-object v3, Lcom/henrythompson/quoda/Directories;->DIRECTORY_QUODA:Ljava/io/File;

    const/4 v8, 0x6

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v8, 0x3

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    const/4 v8, 0x3

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/temp."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    :try_start_0
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/4 v8, 0x3

    invoke-virtual {v2, v5}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const/4 v8, 0x3

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x6

    :goto_0
    const/4 v6, 0x1

    invoke-direct {p0, v6, v4}, Lcom/henrythompson/quoda/EditorPanel;->previewBrowserPicker(ZLjava/lang/String;)V

    const/4 v8, 0x4

    nop

    return-void

    const/4 v6, 0x2

    const/4 v8, 0x0

    :catch_0
    move-exception v0

    const/4 v8, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorPanel;->showErrorPreviewingFileDialog()V

    goto :goto_0

    const/4 v1, 0x2
.end method

.method private quickPreview()V
    .locals 5

    const/4 v4, 0x0

    const/4 v4, 0x5

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/henrythompson/quoda/PreviewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x0

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorPanel;->startActivity(Landroid/content/Intent;)V

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f01000b

    const v3, 0x7f01000c

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    const/4 v4, 0x6

    nop

    return-void

    const/4 v1, 0x6
.end method

.method private reopenWithEncoding(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x7

    new-instance v0, Lcom/henrythompson/quoda/EditorPanel$35;

    invoke-direct {v0, p0, p2}, Lcom/henrythompson/quoda/EditorPanel$35;-><init>(Lcom/henrythompson/quoda/EditorPanel;Ljava/lang/String;)V

    const/4 v3, 0x6

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFileObject()Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v1

    new-instance v2, Lcom/henrythompson/quoda/EditorPanel$36;

    invoke-direct {v2, p0, v0}, Lcom/henrythompson/quoda/EditorPanel$36;-><init>(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;)V

    invoke-static {p1, p2, v1, v2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->openFile(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;Lcom/henrythompson/quoda/filesystem/FileObject;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;)V

    const/4 v3, 0x6

    nop

    return-void

    const/4 v0, 0x1
.end method

.method private setKeyboardForLocale()V
    .locals 6

    const/4 v5, 0x7

    const/4 v5, 0x6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    const-string v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ko"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v5, 0x5

    const v0, 0xa0091

    const/4 v5, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v2, v0}, Lcom/henrythompson/quoda/CodeView;->setInputType(I)V

    const/4 v5, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbarFindText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v5, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbarReplaceText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v5, 0x6

    :cond_0
    const-string v2, "EditorPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device locale is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x5

    nop

    return-void

    const/4 v5, 0x3
.end method

.method private setOnClickListeners()V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mOverflowButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->onActionbarItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mUndoButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->onActionbarItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mRedoButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->onActionbarItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreviewButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->onActionbarItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->onActionbarItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFileButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->onActionbarItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mEditButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->onActionbarItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mToolsButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->onActionbarItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mSaveButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->onActionbarItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mShowFileBrowserButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->onActionbarItemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindNextButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->onFindNextClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindBackButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->onFindPreviousClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindOverflowButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->onFindOverflowClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mReplaceButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->onReplaceClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mReplaceAllButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->onReplaceAllClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x3

    nop

    return-void

    const/4 v2, 0x5
.end method

.method private showErrorPreviewingFileDialog()V
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    const v1, 0x7f0d008a

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x3

    const v1, 0x7f0d0089

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x5

    const v1, 0x7f0d018c

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v3, 0x7

    nop

    return-void

    const/4 v0, 0x5
.end method

.method private showMenu(Landroid/view/View;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/henrythompson/quoda/ListItem;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v3, 0x6

    new-instance v0, Lcom/henrythompson/quoda/ListItemAdapter;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0a004f

    invoke-direct {v0, v1, v2, p2}, Lcom/henrythompson/quoda/ListItemAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v3, 0x4

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/henrythompson/quoda/EditorPanel;->showMenu(Landroid/view/View;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/ListAdapter;)V

    const/4 v3, 0x4

    nop

    return-void

    const/4 v1, 0x7
.end method

.method private showMenu(Landroid/view/View;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/ListAdapter;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/henrythompson/quoda/ListItem;",
            ">;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    const/4 v8, 0x4

    const/4 v8, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "layout_inflater"

    const/4 v8, 0x2

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v8, 0x6

    const/16 v5, 0xc8

    invoke-static {v5}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v2

    const/4 v8, 0x1

    new-instance v3, Landroid/widget/PopupWindow;

    const v5, 0x7f0a0050

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const/4 v6, -0x2

    const/4 v7, 0x1

    invoke-direct {v3, v5, v2, v6, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 v8, 0x4

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    const v6, 0x7f0800ac

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    const/4 v8, 0x7

    invoke-virtual {v1, p4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v8, 0x7

    new-instance v5, Lcom/henrythompson/quoda/EditorPanel$19;

    invoke-direct {v5, p0, v3, p3}, Lcom/henrythompson/quoda/EditorPanel$19;-><init>(Lcom/henrythompson/quoda/EditorPanel;Landroid/widget/PopupWindow;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v8, 0x1

    const v5, 0x1030002

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const/4 v8, 0x7

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const/4 v8, 0x5

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v3, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v8, 0x7

    invoke-virtual {p0, p1, v2}, Lcom/henrythompson/quoda/EditorPanel;->calculateDropdownOffset(Landroid/view/View;I)I

    move-result v4

    const/4 v8, 0x3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, p1, v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    const/4 v8, 0x2

    nop

    return-void

    const/4 v2, 0x3
.end method

.method private showUnsupportedEncodingDialog(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v4, 0x3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x0

    const v1, 0x7f0d00b0

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x4

    const v1, 0x7f0d00af

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/henrythompson/quoda/EditorPanel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x5

    const v1, 0x7f0d018c

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v4, 0x1

    nop

    return-void

    const/4 v3, 0x3
.end method


# virtual methods
.method public applySettings()V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/QuodaPreferences;->getFontSize()I

    move-result v3

    int-to-float v0, v3

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/CodeView;->getTextSize()F

    move-result v3

    cmpl-float v3, v3, v0

    if-eqz v3, :cond_0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/QuodaPreferences;->getFontSize()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/CodeView;->setTextSize(F)V

    const/4 v5, 0x6

    :cond_0
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/QuodaPreferences;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v5, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/CodeView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    if-eq v3, v1, :cond_1

    const/4 v5, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/QuodaPreferences;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/CodeView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v5, 0x4

    :cond_1
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/QuodaPreferences;->getAdditionalKeysEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v5, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mAdditionalKeys:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v5, 0x5

    :goto_0
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/QuodaPreferences;->getLineNumbersEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/CodeView;->setShowLines(Z)V

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/CodeView;->refreshTheme()V

    const/4 v5, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    const/4 v5, 0x2

    invoke-virtual {v4}, Lcom/henrythompson/quoda/QuodaPreferences;->getWordWrapEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    const/4 v2, 0x1

    const/4 v5, 0x3

    :cond_2
    invoke-virtual {v3, v2}, Lcom/henrythompson/quoda/CodeView;->setHorizontallyScrolling(Z)V

    const/4 v5, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/QuodaPreferences;->getReadOnlyModeEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/CodeView;->setReadOnly(Z)V

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/QuodaPreferences;->getReadOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v5, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v5, 0x1

    :cond_3
    nop

    return-void

    const/4 v5, 0x6

    const/4 v5, 0x2

    :cond_4
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mAdditionalKeys:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    const/4 v0, 0x1
.end method

.method public calculateDropdownOffset(Landroid/view/View;I)I
    .locals 9

    const/4 v8, 0x6

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    const/4 v8, 0x6

    div-int/lit8 v4, v3, 0x2

    div-int/lit8 v5, p2, 0x2

    sub-int v1, v4, v5

    const/4 v8, 0x5

    new-array v2, v6, [I

    const/4 v8, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v8, 0x1

    new-array v0, v6, [I

    const/4 v8, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel;->mContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    const/4 v8, 0x2

    aget v4, v2, v7

    add-int/2addr v4, v1

    aget v5, v0, v7

    if-ge v4, v5, :cond_1

    const/4 v8, 0x1

    aget v4, v2, v7

    aget v5, v0, v7

    sub-int/2addr v4, v5

    mul-int/lit8 v1, v4, -0x1

    const/4 v8, 0x2

    :cond_0
    :goto_0
    return v1

    const/4 v2, 0x0

    const/4 v8, 0x4

    :cond_1
    aget v4, v2, v7

    add-int/2addr v4, v1

    add-int/2addr v4, p2

    aget v5, v0, v7

    iget-object v6, p0, Lcom/henrythompson/quoda/EditorPanel;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v8, 0x0

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    if-le v4, v5, :cond_0

    const/4 v8, 0x3

    aget v4, v2, v7

    add-int/2addr v4, p2

    aget v5, v0, v7

    iget-object v6, p0, Lcom/henrythompson/quoda/EditorPanel;->mContainer:Landroid/widget/RelativeLayout;

    const/4 v8, 0x7

    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    mul-int/lit8 v1, v4, -0x1

    const/4 v8, 0x0

    goto :goto_0

    const/4 v6, 0x0
.end method

.method public closeDocumentSwitcherDrawer()V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    const/4 v2, 0x0

    nop

    return-void

    const/4 v1, 0x4
.end method

.method public closeFileBrowserDrawer()V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    const/4 v2, 0x3

    nop

    return-void

    const/4 v1, 0x6
.end method

.method public configureActionbar()V
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v12, 0x2

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->isAdded()Z

    move-result v10

    if-nez v10, :cond_0

    const/4 v12, 0x0

    :goto_0
    nop

    return-void

    const/4 v1, 0x3

    const/4 v12, 0x7

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06004b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v12, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f060070

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v12, 0x2

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-ge v10, v11, :cond_3

    const/4 v12, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v10

    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v12, 0x5

    const/4 v9, 0x0

    const/4 v12, 0x6

    const/4 v8, 0x0

    const/4 v12, 0x2

    :goto_1
    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mActionbar:Landroid/widget/RelativeLayout;

    invoke-virtual {v10}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v10

    sub-int/2addr v10, v3

    sub-int v0, v10, v8

    const/4 v12, 0x4

    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    invoke-static {v10}, Lcom/henrythompson/quoda/utils/Utils;->getScreenWidthDp(Landroid/app/Activity;)F

    move-result v10

    const/high16 v11, 0x44480000    # 800.0f

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_4

    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/QuodaPreferences;->getFilebrowserPanelVisible()Z

    move-result v10

    if-nez v10, :cond_4

    const/4 v12, 0x4

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v10

    sub-int v10, v5, v10

    sub-int/2addr v0, v10

    const/4 v12, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mShowFileBrowserButton:Landroid/widget/ImageButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v12, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mShowFileBrowserDivider:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    const/4 v12, 0x1

    :goto_2
    div-int v10, v0, v5

    int-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    const/4 v12, 0x2

    if-eqz v9, :cond_6

    const/4 v12, 0x5

    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mOverflowButton:Landroid/widget/ImageButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v12, 0x4

    :goto_3
    const/16 v10, 0x8

    new-array v1, v10, [Landroid/widget/ImageButton;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/henrythompson/quoda/EditorPanel;->mUndoButton:Landroid/widget/ImageButton;

    aput-object v11, v1, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/henrythompson/quoda/EditorPanel;->mSaveButton:Landroid/widget/ImageButton;

    aput-object v11, v1, v10

    const/4 v10, 0x2

    iget-object v11, p0, Lcom/henrythompson/quoda/EditorPanel;->mRedoButton:Landroid/widget/ImageButton;

    aput-object v11, v1, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/henrythompson/quoda/EditorPanel;->mFileButton:Landroid/widget/ImageButton;

    aput-object v11, v1, v10

    const/4 v10, 0x4

    iget-object v11, p0, Lcom/henrythompson/quoda/EditorPanel;->mEditButton:Landroid/widget/ImageButton;

    aput-object v11, v1, v10

    const/4 v10, 0x5

    iget-object v11, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindButton:Landroid/widget/ImageButton;

    aput-object v11, v1, v10

    const/4 v10, 0x6

    iget-object v11, p0, Lcom/henrythompson/quoda/EditorPanel;->mToolsButton:Landroid/widget/ImageButton;

    aput-object v11, v1, v10

    const/4 v10, 0x7

    iget-object v11, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreviewButton:Landroid/widget/ImageButton;

    aput-object v11, v1, v10

    const/4 v12, 0x4

    const-wide/16 v10, 0x0

    cmpg-double v10, v6, v10

    if-gez v10, :cond_1

    const-wide/16 v6, 0x0

    const/4 v12, 0x0

    :cond_1
    const/4 v4, 0x0

    const/4 v12, 0x7

    :goto_4
    int-to-double v10, v4

    cmpg-double v10, v10, v6

    if-gez v10, :cond_7

    array-length v10, v1

    if-ge v4, v10, :cond_7

    const/4 v12, 0x0

    aget-object v10, v1, v4

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v12, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    const/4 v12, 0x1

    const/4 v12, 0x5

    :cond_2
    const/4 v9, 0x1

    const/4 v12, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06004e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto/16 :goto_1

    const/4 v7, 0x4

    const/4 v12, 0x2

    :cond_3
    const/4 v9, 0x1

    const/4 v12, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f06004e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    goto/16 :goto_1

    const/4 v7, 0x2

    const/4 v12, 0x2

    :cond_4
    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/EditorActivity;->isUsingTabletLayout()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/QuodaPreferences;->getPreviewPanelVisible()Z

    move-result v10

    if-nez v10, :cond_5

    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/QuodaPreferences;->getFilebrowserPanelVisible()Z

    move-result v10

    if-nez v10, :cond_5

    const/4 v12, 0x6

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v10

    sub-int v10, v5, v10

    sub-int/2addr v0, v10

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mShowFileBrowserButton:Landroid/widget/ImageButton;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v12, 0x6

    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mShowFileBrowserDivider:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    const/4 v4, 0x1

    const/4 v12, 0x6

    :cond_5
    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mShowFileBrowserButton:Landroid/widget/ImageButton;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v12, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mShowFileBrowserDivider:Landroid/view/View;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    const/4 v6, 0x0

    const/4 v12, 0x2

    :cond_6
    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mOverflowButton:Landroid/widget/ImageButton;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_3

    const/4 v4, 0x3

    const/4 v12, 0x5

    :cond_7
    :goto_5
    array-length v10, v1

    if-ge v4, v10, :cond_8

    const/4 v12, 0x5

    aget-object v10, v1, v4

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 v12, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    const/4 v10, 0x3

    const/4 v12, 0x1

    :cond_8
    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v2

    const/4 v12, 0x1

    if-eqz v2, :cond_b

    const/4 v12, 0x0

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v10

    if-eqz v10, :cond_9

    const/4 v12, 0x5

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v10

    invoke-virtual {v10}, Lcom/henrythompson/quoda/UndoStack;->canUndo()Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v12, 0x3

    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mUndoButton:Landroid/widget/ImageButton;

    const v11, 0x7f0700ce

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v12, 0x2

    :goto_6
    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getRedoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v10

    if-eqz v10, :cond_a

    const/4 v12, 0x5

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getRedoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v10

    invoke-virtual {v10}, Lcom/henrythompson/quoda/UndoStack;->canUndo()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v12, 0x2

    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mRedoButton:Landroid/widget/ImageButton;

    const v11, 0x7f0700c4

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    const/4 v4, 0x1

    const/4 v12, 0x6

    :cond_9
    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mUndoButton:Landroid/widget/ImageButton;

    const v11, 0x7f0700cd

    const/4 v12, 0x5

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_6

    const/4 v3, 0x5

    const/4 v12, 0x6

    :cond_a
    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mRedoButton:Landroid/widget/ImageButton;

    const v11, 0x7f0700c3

    const/4 v12, 0x6

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    const/4 v11, 0x3

    const/4 v12, 0x6

    :cond_b
    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mRedoButton:Landroid/widget/ImageButton;

    const v11, 0x7f0700c3

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/EditorPanel;->mUndoButton:Landroid/widget/ImageButton;

    const v11, 0x7f0700cd

    invoke-virtual {v10, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_0

    const/4 v11, 0x7
.end method

.method public createNewBlankFile()V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x6

    const/4 v0, 0x0

    const v1, 0x7f0d0067

    const/4 v3, 0x2

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2}, Lcom/henrythompson/quoda/NewFileCreator;->createNewFile(ILjava/lang/String;Landroid/content/Context;)V

    const/4 v3, 0x4

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public displayOverflowDropDown()V
    .locals 11

    const/4 v10, 0x3

    const/4 v10, 0x5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x1

    new-instance v4, Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    const/4 v10, 0x2

    invoke-virtual {p0, v4, v5}, Lcom/henrythompson/quoda/EditorPanel;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v10, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v4}, Landroid/view/Menu;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    const/4 v10, 0x7

    invoke-interface {v4, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v10, 0x7

    new-instance v7, Lcom/henrythompson/quoda/ListItem;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-direct {v7, v8, v9}, Lcom/henrythompson/quoda/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x6

    invoke-interface {v4, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v7, 0x5

    const/4 v10, 0x4

    :cond_0
    new-instance v3, Lcom/henrythompson/quoda/EditorPanel$18;

    invoke-direct {v3, p0, v1}, Lcom/henrythompson/quoda/EditorPanel$18;-><init>(Lcom/henrythompson/quoda/EditorPanel;Ljava/util/ArrayList;)V

    const/4 v10, 0x3

    iget-object v7, p0, Lcom/henrythompson/quoda/EditorPanel;->mOverflowButton:Landroid/widget/ImageButton;

    invoke-direct {p0, v7, v2, v3}, Lcom/henrythompson/quoda/EditorPanel;->showMenu(Landroid/view/View;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v10, 0x2

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public displaySubMenu(Landroid/view/SubMenu;I)V
    .locals 8

    const/4 v7, 0x2

    const/4 v7, 0x4

    const/4 v0, 0x0

    const/4 v7, 0x4

    const v4, 0x7f0800f0

    if-ne p2, v4, :cond_3

    const/4 v7, 0x3

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel;->mFileButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v7, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFileButton:Landroid/widget/ImageButton;

    const/4 v7, 0x3

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v7, 0x5

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mOverflowButton:Landroid/widget/ImageButton;

    const/4 v7, 0x7

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x4

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p1}, Landroid/view/SubMenu;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    const/4 v7, 0x6

    new-instance v4, Lcom/henrythompson/quoda/ListItem;

    invoke-interface {p1, v1}, Landroid/view/SubMenu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-direct {v4, v5, v6}, Lcom/henrythompson/quoda/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v6, 0x6

    const/4 v7, 0x6

    :cond_3
    const v4, 0x7f0800e7

    if-ne p2, v4, :cond_4

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mEditButton:Landroid/widget/ImageButton;

    goto :goto_0

    const/4 v5, 0x5

    const/4 v7, 0x6

    :cond_4
    const v4, 0x7f080101

    if-ne p2, v4, :cond_5

    const/4 v7, 0x4

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel;->mToolsButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mToolsButton:Landroid/widget/ImageButton;

    goto :goto_0

    const/4 v1, 0x2

    const/4 v7, 0x6

    :cond_5
    const v4, 0x7f0800fc

    if-ne p2, v4, :cond_0

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreviewButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v7, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreviewButton:Landroid/widget/ImageButton;

    goto :goto_0

    const/4 v7, 0x1

    const/4 v7, 0x7

    :cond_6
    new-instance v3, Lcom/henrythompson/quoda/EditorPanel$20;

    invoke-direct {v3, p0, p1}, Lcom/henrythompson/quoda/EditorPanel$20;-><init>(Lcom/henrythompson/quoda/EditorPanel;Landroid/view/SubMenu;)V

    const/4 v7, 0x7

    invoke-direct {p0, v0, v2, v3}, Lcom/henrythompson/quoda/EditorPanel;->showMenu(Landroid/view/View;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v7, 0x0

    nop

    return-void

    const/4 v5, 0x3
.end method

.method public find(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbarFindText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindListener:Lcom/henrythompson/quoda/FindEngine$FindListener;

    invoke-static {v0, v1, p1}, Lcom/henrythompson/quoda/FindEngine;->find(Ljava/lang/String;Lcom/henrythompson/quoda/FindEngine$FindListener;Z)V

    const/4 v2, 0x4

    :goto_0
    nop

    return-void

    const/4 v1, 0x2

    const/4 v2, 0x3

    :cond_0
    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/CodeView;->clearFindResults()V

    goto :goto_0

    const/4 v2, 0x6
.end method

.method public getDataManager(Ljava/lang/Class;)Lcom/henrythompson/quoda/DataManager;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/henrythompson/quoda/DataManager;",
            ">;)",
            "Lcom/henrythompson/quoda/DataManager;"
        }
    .end annotation

    const/4 v1, 0x6

    const/4 v1, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/DataController;->getDataManager(Ljava/lang/Class;)Lcom/henrythompson/quoda/DataManager;

    move-result-object v0

    return-object v0

    const/4 v1, 0x2
.end method

.method public inflateMenuXml(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    const/high16 v0, 0x7f0b0000

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->isNewOrOldPremiumSubscriber()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    const v0, 0x7f0800fb

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/EditorActivity;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/EditorActivity;->isUsingTabletLayout()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v1, 0x7

    const v0, 0x7f0800fe

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    const/4 v1, 0x2

    :cond_1
    nop

    return-void

    const/4 v0, 0x2
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x2

    invoke-super {p0, p1}, Lcom/henrythompson/quoda/AuthHandlingFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v2, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/henrythompson/quoda/DataController;->attachListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/EditorActivity;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mParent:Lcom/henrythompson/quoda/EditorActivity;

    const/4 v2, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    const/4 v2, 0x5

    const-class v0, Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorPanel;->getDataManager(Ljava/lang/Class;)Lcom/henrythompson/quoda/DataManager;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/document/DocumentsManager;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    const/4 v2, 0x0

    const-class v0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorPanel;->getDataManager(Ljava/lang/Class;)Lcom/henrythompson/quoda/DataManager;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFilesystemsManager:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorPanel;->fetchViews()V

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorPanel;->setOnClickListeners()V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFileBrowserDrawerFragment:Lcom/henrythompson/quoda/FileBrowserPanel;

    new-instance v1, Lcom/henrythompson/quoda/EditorPanel$13;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/EditorPanel$13;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/FileBrowserPanel;->setCloseFileBrowserPanelListener(Lcom/henrythompson/quoda/FileBrowserPanel$OnCloseFileBrowserPanelListener;)V

    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorPanel;->setKeyboardForLocale()V

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0, p0}, Lcom/henrythompson/quoda/CodeView;->setOnShortcutListener(Lcom/henrythompson/quoda/CodeView$ShortcutListener;)V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->onCodeViewTextChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/CodeView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    new-instance v1, Lcom/henrythompson/quoda/EditorPanel$14;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/EditorPanel$14;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/CodeView;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mScrollerWidget:Lcom/henrythompson/quoda/ScrollerWidget;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/ScrollerWidget;->linkCodeView(Lcom/henrythompson/quoda/CodeView;)V

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbarFindText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->onFindTextChanged:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentSwitcher:Landroid/widget/Button;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentSwitcherListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/henrythompson/quoda/EditorPanel$15;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/EditorPanel$15;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorPanel;->initialiseFeedbackDialog()V

    const/4 v2, 0x3

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v10, 0x2

    invoke-super {p0, p1, p2, p3}, Lcom/henrythompson/quoda/AuthHandlingFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v10, 0x3

    const/4 v8, 0x4

    if-ne p1, v8, :cond_0

    const/4 v10, 0x3

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    iget-object v9, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/henrythompson/quoda/document/DocumentsManager;->closeDocument(Lcom/henrythompson/quoda/document/Document;)I

    const/4 v10, 0x5

    :cond_0
    iget-object v8, p0, Lcom/henrythompson/quoda/EditorPanel;->mFileBrowserDrawerFragment:Lcom/henrythompson/quoda/FileBrowserPanel;

    if-eqz v8, :cond_1

    const/4 v10, 0x6

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorPanel;->mFileBrowserDrawerFragment:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-virtual {v8, p1, p2, p3}, Lcom/henrythompson/quoda/FileBrowserPanel;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v10, 0x0

    :cond_1
    iget-object v8, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentSwitcherFragment:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;

    if-eqz v8, :cond_2

    const/4 v10, 0x6

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentSwitcherFragment:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;

    invoke-virtual {v8, p1, p2, p3}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v10, 0x3

    :cond_2
    const/4 v8, 0x6

    if-ne p1, v8, :cond_3

    const/4 v10, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->isNewOrOldPremiumSubscriber()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v10, 0x5

    const/4 v8, -0x1

    if-ne p2, v8, :cond_3

    const/4 v10, 0x4

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const/4 v10, 0x4

    const-string v8, "SNIPPET_LOCATION"

    const/4 v10, 0x4

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x3

    const-string v8, "SNIPPET_NAME"

    const/4 v10, 0x2

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getInstance()Lcom/henrythompson/quoda/snippet/SnippetsManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/henrythompson/quoda/snippet/SnippetsManager;->getDatabase()Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;

    move-result-object v1

    const/4 v10, 0x0

    invoke-virtual {v1, v5, v4}, Lcom/henrythompson/quoda/snippet/SnippetsDatabaseHandler;->getSnippetForLocation(Ljava/lang/String;Ljava/lang/String;)Lcom/henrythompson/quoda/snippet/Snippet;

    move-result-object v6

    const/4 v10, 0x5

    if-nez v6, :cond_4

    const/4 v10, 0x4

    const v8, 0x7f0d00e9

    invoke-virtual {p0, v8}, Lcom/henrythompson/quoda/EditorPanel;->showToast(I)V

    const/4 v10, 0x4

    :cond_3
    :goto_0
    nop

    return-void

    const/4 v6, 0x6

    const/4 v10, 0x2

    :cond_4
    iget-object v8, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v10, 0x6

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/CodeView;->getIndentationForCurrentLine()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x4

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v7

    const/4 v10, 0x1

    invoke-virtual {v0, v6, v3, v7}, Lcom/henrythompson/quoda/document/Document;->setCurrentlyInsertedSnippet(Lcom/henrythompson/quoda/snippet/Snippet;Ljava/lang/String;I)V

    const/4 v10, 0x2

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/CodeView;->refresh()V

    goto :goto_0

    const/4 v4, 0x2

    const/4 v10, 0x3

    :cond_5
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->upgradeToPremium()V

    goto :goto_0

    const/4 v9, 0x6
.end method

.method public onAdditionalKeyClick(Ljava/lang/CharSequence;)V
    .locals 11

    const/4 v10, 0x6

    const/16 v9, 0x71

    const/16 v8, 0x3b

    const/16 v7, 0x39

    const/4 v6, 0x0

    const/4 v10, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    const/4 v10, 0x7

    if-eqz v3, :cond_1

    instance-of v5, v3, Landroid/widget/EditText;

    if-eqz v5, :cond_1

    move-object v2, v3

    const/4 v10, 0x1

    check-cast v2, Landroid/widget/EditText;

    const/4 v10, 0x6

    :goto_0
    const-string v5, "\u21e5"

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v10, 0x6

    const-string p1, "\t"

    const/4 v10, 0x6

    :cond_0
    const-string v5, "\u2388"

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v10, 0x2

    instance-of v5, v2, Lcom/henrythompson/quoda/CodeView;

    if-eqz v5, :cond_2

    const/4 v10, 0x3

    check-cast v2, Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/CodeView;->toggleCtrl()V

    const/4 v10, 0x2

    :goto_1
    nop

    return-void

    const/4 v8, 0x0

    const/4 v10, 0x0

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    goto :goto_0

    const/4 v0, 0x7

    const/4 v10, 0x1

    :cond_2
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v6, v9}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    const/4 v1, 0x4

    const/4 v10, 0x3

    :cond_3
    const-string v5, "\u2387"

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v10, 0x5

    instance-of v5, v2, Lcom/henrythompson/quoda/CodeView;

    if-eqz v5, :cond_4

    const/4 v10, 0x6

    check-cast v2, Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/CodeView;->toggleAlt()V

    goto :goto_1

    const/4 v9, 0x1

    const/4 v10, 0x6

    :cond_4
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v6, v7}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v10, 0x4

    invoke-virtual {v2, v7, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    const/4 v3, 0x6

    const/4 v10, 0x1

    :cond_5
    const-string v5, "\u21e7"

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v10, 0x3

    instance-of v5, v2, Lcom/henrythompson/quoda/CodeView;

    if-eqz v5, :cond_6

    const/4 v10, 0x1

    check-cast v2, Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/CodeView;->toggleShift()V

    goto :goto_1

    const/4 v0, 0x3

    const/4 v10, 0x3

    :cond_6
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v6, v8}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v10, 0x6

    invoke-virtual {v2, v8, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    const/4 v3, 0x5

    const/4 v10, 0x4

    :cond_7
    const-string v5, "\u2326"

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v10, 0x7

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v5, 0x43

    invoke-direct {v1, v6, v5}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v10, 0x1

    const/16 v5, 0x70

    invoke-virtual {v2, v5, v1}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    const/4 v7, 0x4

    const/4 v10, 0x4

    :cond_8
    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v4

    const/4 v10, 0x6

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    const/4 v10, 0x5

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v4, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_1

    const/4 v4, 0x7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    const/4 v6, 0x3

    const v5, 0x7f080104

    const v4, 0x7f080101

    const/4 v6, 0x4

    invoke-virtual {p0, p1, p2}, Lcom/henrythompson/quoda/EditorPanel;->inflateMenuXml(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v6, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const-string v3, "html"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v6, 0x6

    invoke-interface {p1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v6, 0x0

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/SubMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v6, 0x3

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/SubMenu;->removeItem(I)V

    const/4 v6, 0x5

    :cond_0
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mFileButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v6, 0x1

    const v3, 0x7f0800f0

    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    const/4 v6, 0x5

    :cond_1
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v6, 0x5

    const v3, 0x7f0800e7

    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    const/4 v6, 0x1

    :cond_2
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreviewButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v6, 0x3

    const v3, 0x7f0800fc

    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    const/4 v6, 0x3

    :cond_3
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    const/4 v6, 0x1

    const v3, 0x7f0800fa

    invoke-interface {p1, v3}, Landroid/view/Menu;->removeItem(I)V

    const/4 v6, 0x2

    :cond_4
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mToolsButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v3

    if-nez v3, :cond_5

    const/4 v6, 0x2

    invoke-interface {p1, v4}, Landroid/view/Menu;->removeItem(I)V

    const/4 v6, 0x5

    :cond_5
    nop

    return-void

    const/4 v4, 0x3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x0

    const v0, 0x7f0a0052

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    const/4 v2, 0x6
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x7

    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingFragment;->onDestroyView()V

    const/4 v1, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/henrythompson/quoda/DataController;->removeListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v1, 0x5

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public onFindClick()V
    .locals 6

    const/4 v5, 0x7

    const v4, 0x7f01000e

    const/4 v1, 0x0

    const/16 v2, 0x8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_2

    const/4 v5, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mReplaceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-ne v3, v2, :cond_1

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v5, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbar:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v5, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbar:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mReplaceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v5, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/CodeView;->clearFindResults()V

    const/4 v5, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mAdditionalKeys:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    const/4 v5, 0x4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/QuodaPreferences;->getAdditionalKeysEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v5, 0x7

    :goto_1
    nop

    return-void

    const/4 v5, 0x1

    :cond_0
    move v1, v2

    const/4 v5, 0x1

    goto :goto_0

    const/4 v1, 0x3

    const/4 v5, 0x4

    :cond_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v5, 0x5

    new-instance v1, Lcom/henrythompson/quoda/EditorPanel$42;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/EditorPanel$42;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mReplaceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    const/4 v2, 0x5

    const/4 v5, 0x1

    :cond_2
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mReplaceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbar:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbar:Landroid/view/View;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f01000d

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v5, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/CodeView;->clearFindResults()V

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbarFindText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    const/4 v5, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v1

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v3

    if-eq v1, v3, :cond_3

    const/4 v5, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbarFindText:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/CodeView;->getSelectedText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x7

    :cond_3
    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbarFindText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->selectAll()V

    const/4 v5, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorPanel;->find(Z)V

    const/4 v5, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mAdditionalKeys:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    const/4 v0, 0x0
.end method

.method public onFindNextClick()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->gotoNextFindResult()V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x2
.end method

.method public onFindPreviousClick()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->gotoPreviousFindResult()V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public onFindReplaceAllClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public onFindReplaceClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x1

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public onKeyShortcut(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v4, 0x6

    if-nez p1, :cond_1

    const/4 v4, 0x1

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x2

    const/4 v4, 0x1

    :cond_1
    const-string v0, "keybinding_bookmark_clear_all"

    const/4 v4, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    const-string v0, "keybinding_bookmark_line"

    const/4 v4, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showBookmarkLineDialog()V

    goto :goto_0

    const/4 v1, 0x6

    const/4 v4, 0x5

    :cond_2
    const-string v0, "keybinding_bookmark_goto_next"

    const/4 v4, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x6

    const-string v0, "keybinding_bookmark_goto_previous"

    const/4 v4, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    const-string v0, "keybinding_bookmark_selected_line"

    const/4 v4, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->toggleSelectedLineBookmarked()V

    goto :goto_0

    const/4 v3, 0x2

    const/4 v4, 0x5

    :cond_3
    const-string v0, "keybinding_bookmarks"

    const/4 v4, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showBookmarksDialog()V

    goto :goto_0

    const/4 v1, 0x2

    const/4 v4, 0x7

    :cond_4
    const-string v0, "keybinding_close_all_but_selected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x7

    const-string v0, "keybinding_close_all_documents"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x7

    const-string v0, "keybinding_close_document"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getAuthActivity()Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->closeDocumentConfirmIfNotSaved(Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;Lcom/henrythompson/quoda/document/Document;)V

    goto :goto_0

    const/4 v3, 0x4

    const/4 v4, 0x1

    :cond_5
    const-string v0, "keybinding_color_picker"

    const/4 v4, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showColorPickerDialog()V

    goto/16 :goto_0

    const/4 v0, 0x7

    const/4 v4, 0x6

    :cond_6
    const-string v0, "keybinding_comment_block"

    const/4 v4, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->commentOutRange()V

    goto/16 :goto_0

    const/4 v1, 0x5

    const/4 v4, 0x2

    :cond_7
    const-string v0, "keybinding_comment_line"

    const/4 v4, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->commentOutLine()V

    goto/16 :goto_0

    const/4 v4, 0x1

    const/4 v4, 0x1

    :cond_8
    const-string v0, "keybinding_convert_to_lowercase"

    const/4 v4, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x3

    const-string v0, "keybinding_convert_to_uppercase"

    const/4 v4, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x4

    const-string v0, "keybinding_copy"

    const/4 v4, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->copy()V

    goto/16 :goto_0

    const/4 v2, 0x2

    const/4 v4, 0x3

    :cond_9
    const-string v0, "keybinding_cut"

    const/4 v4, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->cut()V

    goto/16 :goto_0

    const/4 v4, 0x7

    const/4 v4, 0x4

    :cond_a
    const-string v0, "keybinding_delete_line"

    const/4 v4, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x6

    const-string v0, "keybinding_download_source"

    const/4 v4, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showDownloadDialog()V

    goto/16 :goto_0

    const/4 v1, 0x7

    const/4 v4, 0x6

    :cond_b
    const-string v0, "keybinding_duplicate_line"

    const/4 v4, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x3

    const-string v0, "keybinding_encoding"

    const/4 v4, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showEncodingDialog()V

    goto/16 :goto_0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_c
    const-string v0, "keybinding_find"

    const/4 v4, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->onFindClick()V

    goto/16 :goto_0

    const/4 v2, 0x1

    const/4 v4, 0x5

    :cond_d
    const-string v0, "keybinding_find_next"

    const/4 v4, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->onFindNextClick()V

    goto/16 :goto_0

    const/4 v3, 0x0

    const/4 v4, 0x6

    :cond_e
    const-string v0, "keybinding_find_previous"

    const/4 v4, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->onFindPreviousClick()V

    goto/16 :goto_0

    const/4 v2, 0x2

    const/4 v4, 0x5

    :cond_f
    const-string v0, "keybinding_force_syntax"

    const/4 v4, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showForceSyntaxDialog()V

    goto/16 :goto_0

    const/4 v4, 0x1

    const/4 v4, 0x6

    :cond_10
    const-string v0, "keybinding_format_html_xml"

    const/4 v4, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v4, 0x5

    new-instance v1, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    const/4 v4, 0x0

    const/4 v4, 0x4

    :cond_11
    const-string v0, "keybinding_goto_line"

    const/4 v4, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showGotoLineDialog()V

    goto/16 :goto_0

    const/4 v3, 0x3

    const/4 v4, 0x4

    :cond_12
    const-string v0, "keybinding_goto_line_end"

    const/4 v4, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->gotoLineEnd()V

    goto/16 :goto_0

    const/4 v2, 0x4

    const/4 v4, 0x6

    :cond_13
    const-string v0, "keybinding_goto_line_start"

    const/4 v4, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->gotoLineStart()V

    goto/16 :goto_0

    const/4 v1, 0x2

    const/4 v4, 0x2

    :cond_14
    const-string v0, "keybinding_join_lines"

    const/4 v4, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x2

    const-string v0, "keybinding_linebreaks"

    const/4 v4, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showLineDelimitersDialog()V

    goto/16 :goto_0

    const/4 v0, 0x2

    const/4 v4, 0x4

    :cond_15
    const-string v0, "keybinding_new"

    const/4 v4, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->createNewBlankFile()V

    goto/16 :goto_0

    const/4 v4, 0x0

    const/4 v4, 0x4

    :cond_16
    const-string v0, "keybinding_new_from_template"

    const/4 v4, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showNewFromTemplateDialog()V

    goto/16 :goto_0

    const/4 v1, 0x6

    const/4 v4, 0x1

    :cond_17
    const-string v0, "keybinding_next_file"

    const/4 v4, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v4, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorPanel;->displayNextDocument()V

    goto/16 :goto_0

    const/4 v2, 0x2

    const/4 v4, 0x4

    :cond_18
    const-string v0, "keybinding_next_word"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->gotoCurrentWordEnd()V

    goto/16 :goto_0

    const/4 v2, 0x1

    const/4 v4, 0x5

    :cond_19
    const-string v0, "keybinding_open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->openFileBrowserDrawer()V

    goto/16 :goto_0

    const/4 v2, 0x5

    const/4 v4, 0x3

    :cond_1a
    const-string v0, "keybinding_paste"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->paste()V

    goto/16 :goto_0

    const/4 v3, 0x6

    const/4 v4, 0x5

    :cond_1b
    const-string v0, "keybinding_preview_in_browser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/EditorPanel;->previewInBrowser(Lcom/henrythompson/quoda/document/Document;)V

    goto/16 :goto_0

    const/4 v0, 0x1

    const/4 v4, 0x6

    :cond_1c
    const-string v0, "keybinding_previous_file"

    const/4 v4, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v4, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorPanel;->displayPreviousDocument()V

    goto/16 :goto_0

    const/4 v0, 0x6

    const/4 v4, 0x0

    :cond_1d
    const-string v0, "keybinding_previous_word"

    const/4 v4, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->gotoCurrentWordStart()V

    goto/16 :goto_0

    const/4 v0, 0x2

    const/4 v4, 0x3

    :cond_1e
    const-string v0, "keybinding_properties"

    const/4 v4, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showPropertiesDialog()V

    goto/16 :goto_0

    const/4 v2, 0x3

    const/4 v4, 0x5

    :cond_1f
    const-string v0, "keybinding_preview"

    const/4 v4, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorPanel;->quickPreview()V

    goto/16 :goto_0

    const/4 v0, 0x2

    const/4 v4, 0x1

    :cond_20
    const-string v0, "keybinding_preview_in_browser"

    const/4 v4, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/EditorPanel;->previewInBrowser(Lcom/henrythompson/quoda/document/Document;)V

    goto/16 :goto_0

    const/4 v3, 0x7

    const/4 v4, 0x0

    :cond_21
    const-string v0, "keybinding_recent"

    const/4 v4, 0x7

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x4

    const-string v0, "keybinding_redo"

    const/4 v4, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_22

    const/4 v4, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->redo()Z

    goto/16 :goto_0

    const/4 v0, 0x5

    const/4 v4, 0x6

    :cond_22
    const-string v0, "keybinding_reload_from_disk"

    const/4 v4, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x5

    const-string v0, "keybinding_rename"

    const/4 v4, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x7

    const-string v0, "keybinding_save"

    const/4 v4, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->saveFile()V

    goto/16 :goto_0

    const/4 v3, 0x0

    const/4 v4, 0x7

    :cond_23
    const-string v0, "keybinding_save_all"

    const/4 v4, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->saveAll(Landroid/support/v4/app/FragmentActivity;)V

    goto/16 :goto_0

    const/4 v4, 0x2

    const/4 v4, 0x5

    :cond_24
    const-string v0, "keybinding_save_as"

    const/4 v4, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->saveFileAs()V

    goto/16 :goto_0

    const/4 v0, 0x0

    const/4 v4, 0x7

    :cond_25
    const-string v0, "keybinding_save_copy_as"

    const/4 v4, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x3

    const-string v0, "keybinding_select_all"

    const/4 v4, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->selectAll()V

    goto/16 :goto_0

    const/4 v2, 0x0

    const/4 v4, 0x7

    :cond_26
    const-string v0, "keybinding_settings"

    const/4 v4, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->onSettingsClick()V

    goto/16 :goto_0

    const/4 v4, 0x1

    const/4 v4, 0x3

    :cond_27
    const-string v0, "keybinding_show_edit_menu"

    const/4 v4, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const/4 v4, 0x7

    const v0, 0x7f0800e7

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/EditorPanel;->onOptionsItemSelected(I)Z

    goto/16 :goto_0

    const/4 v2, 0x7

    const/4 v4, 0x7

    :cond_28
    const-string v0, "keybinding_show_file_menu"

    const/4 v4, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    const/4 v4, 0x5

    const v0, 0x7f0800f0

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/EditorPanel;->onOptionsItemSelected(I)Z

    goto/16 :goto_0

    const/4 v4, 0x4

    const/4 v4, 0x5

    :cond_29
    const-string v0, "keybinding_show_tools_menu"

    const/4 v4, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v4, 0x3

    const v0, 0x7f080101

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/EditorPanel;->onOptionsItemSelected(I)Z

    goto/16 :goto_0

    const/4 v2, 0x5

    const/4 v4, 0x5

    :cond_2a
    const-string v0, "keybinding_show_menu"

    const/4 v4, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2b

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->displayOverflowDropDown()V

    goto/16 :goto_0

    const/4 v4, 0x2

    const/4 v4, 0x2

    :cond_2b
    const-string v0, "keybinding_snippets"

    const/4 v4, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->onSnippetsClick()V

    goto/16 :goto_0

    const/4 v3, 0x0

    const/4 v4, 0x2

    :cond_2c
    const-string v0, "keybinding_split_lines"

    const/4 v4, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v4, 0x6

    const-string v0, "keybinding_undo"

    const/4 v4, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->undo()Z

    goto/16 :goto_0

    const/4 v1, 0x4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x7

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v5, 0x5

    :goto_0
    :pswitch_0
    return v1

    const/4 v2, 0x7

    const/4 v5, 0x4

    :pswitch_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->createNewBlankFile()V

    goto :goto_0

    const/4 v4, 0x3

    const/4 v5, 0x5

    :pswitch_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showNewFromTemplateDialog()V

    goto :goto_0

    const/4 v5, 0x4

    const/4 v5, 0x3

    :pswitch_3
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->saveFile()V

    goto :goto_0

    const/4 v4, 0x1

    const/4 v5, 0x1

    :pswitch_4
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->saveFileAs()V

    goto :goto_0

    const/4 v1, 0x1

    const/4 v5, 0x6

    :pswitch_5
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->openFileBrowserDrawer()V

    goto :goto_0

    const/4 v1, 0x4

    const/4 v5, 0x4

    :pswitch_6
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showForceSyntaxDialog()V

    goto :goto_0

    const/4 v2, 0x3

    const/4 v5, 0x2

    :pswitch_7
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showLineDelimitersDialog()V

    goto :goto_0

    const/4 v5, 0x6

    const/4 v5, 0x0

    :pswitch_8
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showEncodingDialog()V

    goto :goto_0

    const/4 v1, 0x7

    const/4 v5, 0x3

    :pswitch_9
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showPropertiesDialog()V

    goto :goto_0

    const/4 v0, 0x4

    const/4 v5, 0x4

    :pswitch_a
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->commentOutLine()V

    goto :goto_0

    const/4 v1, 0x0

    const/4 v5, 0x4

    :pswitch_b
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->indentSelection()V

    goto :goto_0

    const/4 v0, 0x1

    const/4 v5, 0x7

    :pswitch_c
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->unindentSelection()V

    goto :goto_0

    const/4 v5, 0x1

    const/4 v5, 0x2

    :pswitch_d
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showGotoLineDialog()V

    goto :goto_0

    const/4 v3, 0x4

    const/4 v5, 0x7

    :pswitch_e
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showBookmarkLineDialog()V

    goto :goto_0

    const/4 v5, 0x4

    const/4 v5, 0x3

    :pswitch_f
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->toggleSelectedLineBookmarked()V

    goto :goto_0

    const/4 v0, 0x4

    const/4 v5, 0x1

    :pswitch_10
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showBookmarksDialog()V

    goto :goto_0

    const/4 v0, 0x6

    const/4 v5, 0x3

    :pswitch_11
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showDownloadDialog()V

    goto :goto_0

    const/4 v3, 0x4

    const/4 v5, 0x5

    :pswitch_12
    new-instance v3, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    new-array v4, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v2

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/EditorPanel$FormatHTMLTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    const/4 v0, 0x4

    const/4 v5, 0x3

    :pswitch_13
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showColorPickerDialog()V

    goto/16 :goto_0

    const/4 v3, 0x1

    const/4 v5, 0x3

    :pswitch_14
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->onSnippetsClick()V

    goto/16 :goto_0

    const/4 v1, 0x6

    const/4 v5, 0x0

    :pswitch_15
    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    const/4 v5, 0x2

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->getPreviewPanelVisible()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/henrythompson/quoda/QuodaPreferences;->setPreviewPanelVisible(Z)V

    goto/16 :goto_0

    const/4 v0, 0x3

    :cond_0
    move v0, v2

    const/4 v5, 0x3

    goto :goto_1

    const/4 v0, 0x3

    const/4 v5, 0x4

    :pswitch_16
    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorPanel;->quickPreview()V

    goto/16 :goto_0

    const/4 v4, 0x5

    const/4 v5, 0x7

    :pswitch_17
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/EditorPanel;->previewInBrowser(Lcom/henrythompson/quoda/document/Document;)V

    goto/16 :goto_0

    const/4 v0, 0x4

    const/4 v5, 0x1

    :pswitch_18
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->onFindClick()V

    goto/16 :goto_0

    const/4 v0, 0x5

    const/4 v5, 0x5

    :pswitch_19
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->upgradeToPremium()V

    goto/16 :goto_0

    const/4 v5, 0x4

    const/4 v5, 0x2

    :pswitch_1a
    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorPanel;->onFeedbackClick()V

    goto/16 :goto_0

    const/4 v2, 0x6

    const/4 v5, 0x5

    :pswitch_1b
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->onSettingsClick()V

    goto/16 :goto_0

    const/4 v1, 0x6

    const/4 v5, 0x7

    nop

    :pswitch_data_0
    .packed-switch 0x7f0800e8
        :pswitch_e
        :pswitch_f
        :pswitch_a
        :pswitch_d
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_1a
        :pswitch_0
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_18
        :pswitch_19
        :pswitch_0
        :pswitch_17
        :pswitch_15
        :pswitch_16
        :pswitch_1b
        :pswitch_0
        :pswitch_13
        :pswitch_11
        :pswitch_12
        :pswitch_14
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingFragment;->onPause()V

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFeedbackDialog:Lcom/suredigit/inappfeedback/FeedbackDialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFeedbackDialog:Lcom/suredigit/inappfeedback/FeedbackDialog;

    invoke-virtual {v0}, Lcom/suredigit/inappfeedback/FeedbackDialog;->dismiss()V

    const/4 v1, 0x4

    :cond_0
    nop

    return-void

    const/4 v1, 0x5
.end method

.method public onReceiveCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x6

    const-string v2, "show_document_switcher_drawer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->openDocumentSwitcherDrawer()V

    :cond_0
    :goto_0
    move v0, v1

    const/4 v4, 0x6

    :cond_1
    return v0

    const/4 v2, 0x6

    const/4 v4, 0x7

    :cond_2
    const-string v2, "hide_document_switcher_drawer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->closeDocumentSwitcherDrawer()V

    goto :goto_0

    const/4 v4, 0x4

    const/4 v4, 0x5

    :cond_3
    const-string v2, "show_open_file_drawer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->openFileBrowserDrawer()V

    goto :goto_0

    const/4 v4, 0x2

    const/4 v4, 0x1

    :cond_4
    const-string v2, "hide_open_file_drawer"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->closeFileBrowserDrawer()V

    goto :goto_0

    const/4 v1, 0x5

    const/4 v4, 0x1

    :cond_5
    const-string v2, "show_new_from_template_dialog"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showNewFromTemplateDialog()V

    goto :goto_0

    const/4 v3, 0x3

    const/4 v4, 0x5

    :cond_6
    const-string v2, "create_new_file"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v4, 0x3

    if-nez p2, :cond_0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->createNewBlankFile()V

    goto :goto_0

    const/4 v4, 0x5

    const/4 v4, 0x5

    :cond_7
    const-string v2, "color_picker"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x4

    if-eqz p2, :cond_8

    array-length v2, p2

    if-eqz v2, :cond_9

    const/4 v4, 0x3

    :cond_8
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showColorPickerDialog()V

    goto :goto_0

    const/4 v0, 0x5

    const/4 v4, 0x5

    :cond_9
    array-length v2, p2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    instance-of v2, p2, [Ljava/lang/String;

    if-eqz v2, :cond_a

    const/4 v4, 0x6

    aget-object v0, p2, v0

    aget-object v2, p2, v1

    invoke-virtual {p0, v0, v2}, Lcom/henrythompson/quoda/EditorPanel;->showColorPickerDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    const/4 v3, 0x7

    const/4 v4, 0x3

    :cond_a
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->showColorPickerDialog()V

    goto :goto_0

    const/4 v0, 0x0
.end method

.method public onReceiveEvent(I[Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x4

    :goto_0
    nop

    return-void

    const/4 v0, 0x2

    const/4 v2, 0x7

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/henrythompson/quoda/EditorPanel$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/henrythompson/quoda/EditorPanel$17;-><init>(Lcom/henrythompson/quoda/EditorPanel;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    const/4 v0, 0x4
.end method

.method public onRedoClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->redo()Z

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public onReplaceAllClick()V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbarReplaceText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/CodeView;->replaceAllFindResults(Ljava/lang/String;)V

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorPanel;->find(Z)V

    const/4 v2, 0x7

    :cond_0
    nop

    return-void

    const/4 v1, 0x0
.end method

.method public onReplaceClick()V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mFindbarReplaceText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/CodeView;->replaceFindResult(Ljava/lang/String;)V

    const/4 v2, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorPanel;->find(Z)V

    const/4 v2, 0x2

    :cond_0
    nop

    return-void

    const/4 v1, 0x6
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentSwitcherFragment:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentSwitcherFragment:Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/henrythompson/quoda/documentSwitcher/DocumentSwitcherFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v1, 0x2

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFileBrowserDrawerFragment:Lcom/henrythompson/quoda/FileBrowserPanel;

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mFileBrowserDrawerFragment:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/henrythompson/quoda/FileBrowserPanel;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v1, 0x4

    :cond_1
    nop

    return-void

    const/4 v1, 0x4
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x5

    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingFragment;->onResume()V

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mActionbar:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/henrythompson/quoda/EditorPanel$16;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/EditorPanel$16;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->applySettings()V

    const/4 v2, 0x6

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public onSettingsClick()V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->startSettingsActivity()V

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public onSnippetsClick()V
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x5

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/henrythompson/quoda/snippet/SnippetManagerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x3

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 v3, 0x7

    nop

    return-void

    const/4 v2, 0x7
.end method

.method public onSoftKeyboardHidden()V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mAdditionalKeys:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mAdditionalKeys:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v2, 0x3

    :cond_0
    nop

    return-void

    const/4 v0, 0x3
.end method

.method public onSoftKeyboardShown()V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mAdditionalKeys:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->getAdditionalKeysEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mAdditionalKeys:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v2, 0x4

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x2

    const/4 v2, 0x3

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mAdditionalKeys:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    const/4 v2, 0x2
.end method

.method public onUndoClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->undo()Z

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public onVolumeDown()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->getVolumeDownAsAltEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->toggleAlt()V

    const/4 v1, 0x0

    :cond_0
    nop

    return-void

    const/4 v0, 0x5
.end method

.method public onVolumeUp()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->getVolumeUpAsCtrlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/CodeView;->toggleCtrl()V

    const/4 v1, 0x6

    :cond_0
    nop

    return-void

    const/4 v1, 0x5
.end method

.method public openDocumentSwitcherDrawer()V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    const/4 v2, 0x1

    nop

    return-void

    const/4 v1, 0x4
.end method

.method public openFileBrowserDrawer()V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(I)V

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(I)V

    const/4 v2, 0x3

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public saveFile()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorPanel;->saveFile(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v1, 0x6
.end method

.method public saveFile(Lcom/henrythompson/quoda/document/Document;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v9, 0x7

    new-instance v4, Lcom/henrythompson/quoda/EditorPanel$45;

    invoke-direct {v4, p0, p1}, Lcom/henrythompson/quoda/EditorPanel$45;-><init>(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;)V

    const/4 v9, 0x7

    new-instance v3, Lcom/henrythompson/quoda/EditorPanel$46;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/EditorPanel$46;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    const/4 v9, 0x6

    new-instance v2, Lcom/henrythompson/quoda/EditorPanel$47;

    invoke-direct {v2, p0, v4, v3}, Lcom/henrythompson/quoda/EditorPanel$47;-><init>(Lcom/henrythompson/quoda/EditorPanel;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v9, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v9, 0x6

    if-eqz v0, :cond_0

    const/4 v9, 0x1

    new-instance v1, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;

    invoke-direct {v1, v0, v2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;-><init>(Landroid/app/Activity;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;)V

    const/4 v9, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {p1, v1, v5}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->saveFile(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/app/Activity;)V

    const/4 v9, 0x4

    :goto_0
    nop

    return-void

    const/4 v7, 0x5

    const/4 v9, 0x7

    :cond_0
    const v5, 0x7f0d00aa

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/henrythompson/quoda/EditorPanel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0d00c7

    invoke-virtual {p0, v6}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/henrythompson/quoda/DataController;->showMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    const/4 v4, 0x4
.end method

.method public saveFileAs()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorPanel;->saveFileAs(Lcom/henrythompson/quoda/document/Document;)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public saveFileAs(Lcom/henrythompson/quoda/document/Document;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v9, 0x5

    new-instance v4, Lcom/henrythompson/quoda/EditorPanel$48;

    invoke-direct {v4, p0, p1}, Lcom/henrythompson/quoda/EditorPanel$48;-><init>(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;)V

    const/4 v9, 0x0

    new-instance v3, Lcom/henrythompson/quoda/EditorPanel$49;

    invoke-direct {v3, p0}, Lcom/henrythompson/quoda/EditorPanel$49;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    const/4 v9, 0x6

    new-instance v2, Lcom/henrythompson/quoda/EditorPanel$50;

    invoke-direct {v2, p0, v4, v3}, Lcom/henrythompson/quoda/EditorPanel$50;-><init>(Lcom/henrythompson/quoda/EditorPanel;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    const/4 v9, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v9, 0x3

    if-eqz v0, :cond_0

    const/4 v9, 0x3

    new-instance v1, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;

    invoke-direct {v1, v0, v2}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$StandardFilesystemOperationListener;-><init>(Landroid/app/Activity;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$OnAuthNeededCallback;)V

    const/4 v9, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {p1, v1, v5}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->saveFileAs(Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;Landroid/app/Activity;)V

    const/4 v9, 0x6

    :goto_0
    nop

    return-void

    const/4 v5, 0x1

    const/4 v9, 0x6

    :cond_0
    const v5, 0x7f0d00aa

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/henrythompson/quoda/EditorPanel;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0d00c7

    invoke-virtual {p0, v6}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/henrythompson/quoda/DataController;->showMessage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    const/4 v5, 0x0
.end method

.method public setLineBookmarked(IZ)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/henrythompson/quoda/document/LineObject;->setIsBookmarked(Z)V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public showBookmarkLineDialog()V
    .locals 5

    const/4 v4, 0x2

    const/4 v4, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x1

    const v2, 0x7f0d0071

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x7

    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x5

    const v2, 0x7f0d0070

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    const/4 v4, 0x0

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v4, 0x4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x5

    const v2, 0x7f0d018c

    new-instance v3, Lcom/henrythompson/quoda/EditorPanel$41;

    invoke-direct {v3, p0, v1}, Lcom/henrythompson/quoda/EditorPanel$41;-><init>(Lcom/henrythompson/quoda/EditorPanel;Landroid/widget/EditText;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v4, 0x1

    nop

    return-void

    const/4 v0, 0x4
.end method

.method public showBookmarksDialog()V
    .locals 9

    const/4 v8, 0x4

    const/4 v8, 0x3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x3

    iget-object v7, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v2

    const/4 v8, 0x4

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getLineCount()I

    move-result v6

    const/4 v8, 0x5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v6, :cond_1

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v5

    const/4 v8, 0x6

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/LineObject;->getIsBookmarked()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v8, 0x2

    add-int/lit8 v7, v3, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v0, 0x3

    const/4 v8, 0x1

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v1, v7, [Ljava/lang/String;

    const/4 v8, 0x1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    const/4 v8, 0x7

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v1, v3

    const/4 v8, 0x7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    const/4 v3, 0x2

    const/4 v8, 0x5

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    const/4 v8, 0x5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x5

    const v7, 0x7f0d0072

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x4

    new-instance v7, Lcom/henrythompson/quoda/EditorPanel$39;

    invoke-direct {v7, p0, v4}, Lcom/henrythompson/quoda/EditorPanel$39;-><init>(Lcom/henrythompson/quoda/EditorPanel;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x7

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v8, 0x1

    :goto_2
    nop

    return-void

    const/4 v0, 0x3

    const/4 v8, 0x2

    :cond_3
    const v7, 0x7f0d017e

    invoke-virtual {p0, v7}, Lcom/henrythompson/quoda/EditorPanel;->showToast(I)V

    goto :goto_2

    const/4 v2, 0x6
.end method

.method public showColorPickerDialog()V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x7

    const-string v0, ""

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->showColorPickerDialog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    nop

    return-void

    const/4 v2, 0x6
.end method

.method public showColorPickerDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x0

    const/4 v0, -0x1

    const/4 v4, 0x1

    new-instance v1, Lyuku/ambilwarna/AmbilWarnaDialog;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/henrythompson/quoda/EditorPanel$43;

    invoke-direct {v3, p0, p1, p2}, Lcom/henrythompson/quoda/EditorPanel$43;-><init>(Lcom/henrythompson/quoda/EditorPanel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0, v3}, Lyuku/ambilwarna/AmbilWarnaDialog;-><init>(Landroid/content/Context;ILyuku/ambilwarna/AmbilWarnaDialog$OnAmbilWarnaListener;)V

    const/4 v4, 0x7

    invoke-virtual {v1}, Lyuku/ambilwarna/AmbilWarnaDialog;->show()V

    const/4 v4, 0x6

    nop

    return-void

    const/4 v4, 0x5
.end method

.method public showDownloadDialog()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x7f0d018c

    const/16 v4, 0xa

    const/4 v7, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/utils/Utils;->isConnectedToInternet()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v7, 0x3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x2

    const v3, 0x7f0d007a

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x1

    const v3, 0x7f0d00f2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x2

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x7

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v7, 0x0

    :goto_0
    nop

    return-void

    const/4 v1, 0x7

    const/4 v7, 0x7

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x2

    const v3, 0x7f0d007c

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x5

    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x2

    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    const/4 v7, 0x1

    const v3, 0x7f0d007b

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    const/4 v7, 0x0

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v7, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x6

    new-instance v3, Lcom/henrythompson/quoda/EditorPanel$37;

    invoke-direct {v3, p0, v2}, Lcom/henrythompson/quoda/EditorPanel$37;-><init>(Lcom/henrythompson/quoda/EditorPanel;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x0

    const v3, 0x7f0d002e

    invoke-virtual {v0, v3, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x4

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v7, 0x7

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v7, 0x4

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const/4 v7, 0x7

    new-instance v3, Lcom/henrythompson/quoda/EditorPanel$38;

    invoke-direct {v3, p0, v2, v1}, Lcom/henrythompson/quoda/EditorPanel$38;-><init>(Lcom/henrythompson/quoda/EditorPanel;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    goto :goto_0

    const/4 v5, 0x7
.end method

.method public showEncodingDialog()V
    .locals 10

    const/4 v9, 0x1

    const/4 v9, 0x5

    iget-object v7, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v2

    const/4 v9, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/high16 v8, 0x7f020000

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v9, 0x5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x7

    const v7, 0x7f0d0086

    invoke-virtual {p0, v7}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    iget-object v7, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    const/4 v9, 0x7

    invoke-virtual {v7}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v7

    invoke-virtual {v7}, Lcom/henrythompson/quoda/document/Document;->getEncoding()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x4

    const/4 v3, 0x0

    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_0

    const/4 v9, 0x3

    aget-object v7, v4, v3

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v9, 0x5

    move v6, v3

    const/4 v9, 0x2

    :cond_0
    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getEncoding()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/henrythompson/quoda/EditorPanel;->selectedEncoding:Ljava/lang/String;

    const/4 v9, 0x3

    new-instance v7, Lcom/henrythompson/quoda/EditorPanel$33;

    invoke-direct {v7, p0, v4}, Lcom/henrythompson/quoda/EditorPanel$33;-><init>(Lcom/henrythompson/quoda/EditorPanel;[Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x6

    const v7, 0x7f0d018c

    invoke-virtual {p0, v7}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/henrythompson/quoda/EditorPanel$34;

    invoke-direct {v8, p0, v2}, Lcom/henrythompson/quoda/EditorPanel$34;-><init>(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;)V

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x5

    const v7, 0x7f0d002e

    invoke-virtual {p0, v7}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x4

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v9, 0x1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const/4 v9, 0x4

    nop

    return-void

    const/4 v5, 0x7

    const/4 v9, 0x3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v7, 0x1
.end method

.method public showFindOverflowDropDown(Landroid/view/View;)V
    .locals 11

    const/4 v10, 0x7

    const/4 v10, 0x4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/QuodaPreferences;->getRegexEnabled()Z

    move-result v5

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/EditorPanel;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/QuodaPreferences;->getCaseSensitive()Z

    move-result v1

    const/4 v10, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/EditorPanel;->mReplaceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    const/4 v10, 0x5

    new-instance v6, Lcom/henrythompson/quoda/ListItem;

    const v7, 0x7f0d00d3

    invoke-virtual {p0, v7}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-direct {v6, v7, v8}, Lcom/henrythompson/quoda/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x4

    :goto_0
    new-instance v6, Lcom/henrythompson/quoda/ListItem;

    const v7, 0x7f0d00d0

    invoke-virtual {p0, v7}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-direct {v6, v7, v8}, Lcom/henrythompson/quoda/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x1

    new-instance v6, Lcom/henrythompson/quoda/ListItem;

    const v7, 0x7f0d00d2

    invoke-virtual {p0, v7}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    iget-object v9, p0, Lcom/henrythompson/quoda/EditorPanel;->mRegexChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {v6, v7, v8, v5, v9}, Lcom/henrythompson/quoda/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x5

    new-instance v6, Lcom/henrythompson/quoda/ListItem;

    const v7, 0x7f0d00cf

    invoke-virtual {p0, v7}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    iget-object v9, p0, Lcom/henrythompson/quoda/EditorPanel;->mCaseSensitiveChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-direct {v6, v7, v8, v1, v9}, Lcom/henrythompson/quoda/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x4

    new-instance v0, Lcom/henrythompson/quoda/ListItemAdapter;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0a004e

    invoke-direct {v0, v6, v7, v3}, Lcom/henrythompson/quoda/ListItemAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v10, 0x5

    new-instance v4, Lcom/henrythompson/quoda/EditorPanel$44;

    invoke-direct {v4, p0}, Lcom/henrythompson/quoda/EditorPanel$44;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    const/4 v10, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const v7, 0x7f0800b6

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v10, 0x3

    invoke-direct {p0, v2, v3, v4, v0}, Lcom/henrythompson/quoda/EditorPanel;->showMenu(Landroid/view/View;Ljava/util/List;Landroid/widget/AdapterView$OnItemClickListener;Landroid/widget/ListAdapter;)V

    const/4 v10, 0x5

    nop

    return-void

    const/4 v5, 0x3

    const/4 v10, 0x7

    :cond_0
    new-instance v6, Lcom/henrythompson/quoda/ListItem;

    const v7, 0x7f0d00d1

    invoke-virtual {p0, v7}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-direct {v6, v7, v8}, Lcom/henrythompson/quoda/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v8, 0x1
.end method

.method public showForceSyntaxDialog()V
    .locals 8

    const/4 v7, 0x7

    const/4 v7, 0x0

    const/16 v5, 0x15

    new-array v3, v5, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    const v6, 0x7f0d018b

    invoke-virtual {p0, v6}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "ActionScript"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "C"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "C++"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "C#"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, "CSS"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "Haskell"

    aput-object v6, v3, v5

    const/4 v5, 0x7

    const-string v6, "HTML"

    aput-object v6, v3, v5

    const/16 v5, 0x8

    const-string v6, "Java"

    aput-object v6, v3, v5

    const/16 v5, 0x9

    const-string v6, "JavaScript"

    aput-object v6, v3, v5

    const/16 v5, 0xa

    const-string v6, "Lisp"

    aput-object v6, v3, v5

    const/16 v5, 0xb

    const-string v6, "Lua"

    aput-object v6, v3, v5

    const/16 v5, 0xc

    const-string v6, "Markdown"

    aput-object v6, v3, v5

    const/16 v5, 0xd

    const-string v6, "Objective-C"

    aput-object v6, v3, v5

    const/16 v5, 0xe

    const-string v6, "Perl"

    aput-object v6, v3, v5

    const/16 v5, 0xf

    const-string v6, "PHP"

    aput-object v6, v3, v5

    const/16 v5, 0x10

    const-string v6, "Python"

    aput-object v6, v3, v5

    const/16 v5, 0x11

    const-string v6, "Ruby"

    aput-object v6, v3, v5

    const/16 v5, 0x12

    const-string v6, "SQL"

    aput-object v6, v3, v5

    const/16 v5, 0x13

    const-string v6, "Visual Basic"

    aput-object v6, v3, v5

    const/16 v5, 0x14

    const-string v6, "XML"

    aput-object v6, v3, v5

    const/4 v7, 0x3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x6

    const v5, 0x7f0d008f

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x2

    const/4 v4, -0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    const/4 v7, 0x4

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "actionscript"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v7, 0x4

    const/4 v4, 0x1

    const/4 v7, 0x2

    :goto_0
    new-instance v5, Lcom/henrythompson/quoda/EditorPanel$27;

    invoke-direct {v5, p0, v1}, Lcom/henrythompson/quoda/EditorPanel$27;-><init>(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x7

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v2

    const/4 v7, 0x2

    const v5, 0x7f0d018c

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/henrythompson/quoda/EditorPanel$28;

    invoke-direct {v6, p0, v1}, Lcom/henrythompson/quoda/EditorPanel$28;-><init>(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x4

    const v5, 0x7f0d002e

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/henrythompson/quoda/EditorPanel$29;

    invoke-direct {v6, p0, v1, v2}, Lcom/henrythompson/quoda/EditorPanel$29;-><init>(Lcom/henrythompson/quoda/EditorPanel;Lcom/henrythompson/quoda/document/Document;Lcom/henrythompson/quoda/language/Language;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v7, 0x7

    nop

    return-void

    const/4 v4, 0x6

    const/4 v7, 0x1

    :cond_0
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "c"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v7, 0x1

    const/4 v4, 0x2

    goto :goto_0

    const/4 v6, 0x5

    const/4 v7, 0x2

    :cond_1
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "c++"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v7, 0x3

    const/4 v4, 0x3

    goto :goto_0

    const/4 v7, 0x2

    const/4 v7, 0x1

    :cond_2
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "c#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v7, 0x3

    const/4 v4, 0x4

    goto :goto_0

    const/4 v6, 0x4

    const/4 v7, 0x2

    :cond_3
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "css"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v7, 0x2

    const/4 v4, 0x5

    goto/16 :goto_0

    const/4 v5, 0x4

    const/4 v7, 0x6

    :cond_4
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "haskell"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v7, 0x1

    const/4 v4, 0x6

    goto/16 :goto_0

    const/4 v5, 0x5

    const/4 v7, 0x3

    :cond_5
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v7, 0x4

    const/4 v4, 0x7

    goto/16 :goto_0

    const/4 v0, 0x4

    const/4 v7, 0x0

    :cond_6
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "java"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v7, 0x0

    const/16 v4, 0x8

    goto/16 :goto_0

    const/4 v3, 0x7

    const/4 v7, 0x7

    :cond_7
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "javascript"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v7, 0x6

    const/16 v4, 0x9

    goto/16 :goto_0

    const/4 v1, 0x2

    const/4 v7, 0x2

    :cond_8
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lisp"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v7, 0x3

    const/16 v4, 0xa

    goto/16 :goto_0

    const/4 v4, 0x0

    const/4 v7, 0x6

    :cond_9
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "lua"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/4 v7, 0x3

    const/16 v4, 0xb

    goto/16 :goto_0

    const/4 v7, 0x5

    const/4 v7, 0x3

    :cond_a
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "markdown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v7, 0x4

    const/16 v4, 0xc

    goto/16 :goto_0

    const/4 v2, 0x4

    const/4 v7, 0x6

    :cond_b
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "objective-c"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v7, 0x1

    const/16 v4, 0xd

    goto/16 :goto_0

    const/4 v2, 0x7

    const/4 v7, 0x4

    :cond_c
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "perl"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/4 v7, 0x6

    const/16 v4, 0xe

    goto/16 :goto_0

    const/4 v4, 0x7

    const/4 v7, 0x3

    :cond_d
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "php"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const/4 v7, 0x7

    const/16 v4, 0xf

    goto/16 :goto_0

    const/4 v3, 0x5

    const/4 v7, 0x5

    :cond_e
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "python"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    const/4 v7, 0x4

    const/16 v4, 0x10

    goto/16 :goto_0

    const/4 v0, 0x5

    const/4 v7, 0x4

    :cond_f
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ruby"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    const/4 v7, 0x0

    const/16 v4, 0x11

    goto/16 :goto_0

    const/4 v6, 0x2

    const/4 v7, 0x6

    :cond_10
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "sql"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    const/4 v7, 0x1

    const/16 v4, 0x12

    goto/16 :goto_0

    const/4 v1, 0x0

    const/4 v7, 0x1

    :cond_11
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "visualbasic"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v7, 0x3

    const/16 v4, 0x13

    goto/16 :goto_0

    const/4 v2, 0x0

    const/4 v7, 0x5

    :cond_12
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "xml"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    const/4 v7, 0x1

    const/16 v4, 0x14

    goto/16 :goto_0

    const/4 v0, 0x7

    const/4 v7, 0x3

    :cond_13
    const/4 v4, 0x0

    goto/16 :goto_0

    const/4 v5, 0x3
.end method

.method public showGotoLineDialog()V
    .locals 6

    const/4 v5, 0x1

    const/4 v5, 0x6

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    const v3, 0x7f0d0092

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x7

    new-instance v2, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x5

    const v3, 0x7f0d0091

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    const/4 v5, 0x7

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    const/4 v5, 0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x6

    const v3, 0x7f0d018c

    new-instance v4, Lcom/henrythompson/quoda/EditorPanel$40;

    invoke-direct {v4, p0, v2}, Lcom/henrythompson/quoda/EditorPanel$40;-><init>(Lcom/henrythompson/quoda/EditorPanel;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v5, 0x4

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v5, 0x3

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    const/4 v5, 0x1

    nop

    return-void

    const/4 v4, 0x0
.end method

.method public showLineDelimitersDialog()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v8, 0x2

    const/4 v4, 0x3

    new-array v1, v4, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    const v5, 0x7f0d0145

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const v4, 0x7f0d0143

    const/4 v8, 0x7

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    const v4, 0x7f0d0144

    const/4 v8, 0x0

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    const/4 v8, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x5

    const v4, 0x7f0d0095

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x4

    iget-object v4, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/Document;->getLinebreakCode()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v6, :cond_0

    const/4 v8, 0x4

    const/4 v3, 0x0

    const/4 v8, 0x2

    :goto_0
    new-instance v4, Lcom/henrythompson/quoda/EditorPanel$30;

    invoke-direct {v4, p0}, Lcom/henrythompson/quoda/EditorPanel$30;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x2

    const v4, 0x7f0d018c

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/henrythompson/quoda/EditorPanel$31;

    invoke-direct {v5, p0}, Lcom/henrythompson/quoda/EditorPanel$31;-><init>(Lcom/henrythompson/quoda/EditorPanel;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x0

    const v4, 0x7f0d002e

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/henrythompson/quoda/EditorPanel$32;

    invoke-direct {v5, p0, v2}, Lcom/henrythompson/quoda/EditorPanel$32;-><init>(Lcom/henrythompson/quoda/EditorPanel;I)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v8, 0x0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v8, 0x6

    nop

    return-void

    const/4 v5, 0x4

    const/4 v8, 0x3

    :cond_0
    if-nez v2, :cond_1

    const/4 v8, 0x4

    const/4 v3, 0x1

    goto :goto_0

    const/4 v5, 0x1

    const/4 v8, 0x2

    :cond_1
    if-ne v2, v7, :cond_2

    const/4 v8, 0x5

    const/4 v3, 0x2

    goto :goto_0

    const/4 v3, 0x2

    const/4 v8, 0x7

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    const/4 v3, 0x3
.end method

.method public showNewFromTemplateDialog()V
    .locals 15

    const/4 v14, 0x7

    const/4 v13, 0x0

    const/4 v12, 0x4

    const/4 v11, 0x1

    const/4 v14, 0x7

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a002d

    invoke-virtual {v0, v1, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const/4 v14, 0x1

    const v0, 0x7f08010e

    const/4 v14, 0x3

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    const/4 v14, 0x3

    const v0, 0x7f080110

    const/4 v14, 0x1

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    const/4 v14, 0x0

    const v0, 0x7f08010f

    const/4 v14, 0x3

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    const/4 v14, 0x2

    const v0, 0x7f08010d

    const/4 v14, 0x0

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    const/4 v14, 0x7

    invoke-virtual {v2, v11}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v14, 0x4

    const/16 v0, 0x18

    new-array v9, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const-string v1, "Blank"

    aput-object v1, v9, v0

    const-string v0, "CSS"

    aput-object v0, v9, v11

    const/4 v0, 0x2

    const-string v1, "C# Class"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, "C# Interface"

    aput-object v1, v9, v0

    const-string v0, "C# Enumeration"

    aput-object v0, v9, v12

    const/4 v0, 0x5

    const-string v1, "C# Struct"

    aput-object v1, v9, v0

    const/4 v0, 0x6

    const-string v1, "HTML5"

    aput-object v1, v9, v0

    const/4 v0, 0x7

    const-string v1, "HTML 4.01 Strict"

    aput-object v1, v9, v0

    const/16 v0, 0x8

    const-string v1, "HTML 4.01 Transitional"

    aput-object v1, v9, v0

    const/16 v0, 0x9

    const-string v1, "XHTML 1.1"

    aput-object v1, v9, v0

    const/16 v0, 0xa

    const-string v1, "XHTML 1 Frameset"

    aput-object v1, v9, v0

    const/16 v0, 0xb

    const-string v1, "XHTML 1 Strict"

    aput-object v1, v9, v0

    const/16 v0, 0xc

    const-string v1, "XHTML 1 Transitional"

    aput-object v1, v9, v0

    const/16 v0, 0xd

    const-string v1, "Java Class"

    aput-object v1, v9, v0

    const/16 v0, 0xe

    const-string v1, "Java Interface"

    aput-object v1, v9, v0

    const/16 v0, 0xf

    const-string v1, "JavaScript"

    aput-object v1, v9, v0

    const/16 v0, 0x10

    const-string v1, "PHP"

    aput-object v1, v9, v0

    const/16 v0, 0x11

    const-string v1, "Python Class"

    aput-object v1, v9, v0

    const/16 v0, 0x12

    const-string v1, "Python Class With Args"

    aput-object v1, v9, v0

    const/16 v0, 0x13

    const-string v1, "VBScript"

    aput-object v1, v9, v0

    const/16 v0, 0x14

    const-string v1, "Visual Basic Class"

    aput-object v1, v9, v0

    const/16 v0, 0x15

    const-string v1, "Visual Basic Interface"

    aput-object v1, v9, v0

    const/16 v0, 0x16

    const-string v1, "Visual Basic Module"

    aput-object v1, v9, v0

    const/16 v0, 0x17

    const-string v1, "XML"

    aput-object v1, v9, v0

    const/4 v14, 0x0

    new-instance v8, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x1090008

    invoke-direct {v8, v0, v1, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const/4 v14, 0x2

    const v0, 0x1090009

    invoke-virtual {v8, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    const/4 v14, 0x2

    invoke-virtual {v5, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v14, 0x7

    const/16 v0, 0x64

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setSelection(I)V

    const/4 v14, 0x6

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v14, 0x1

    const v0, 0x7f0d009b

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v14, 0x1

    const v0, 0x7f0d0065

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v11

    new-instance v0, Lcom/henrythompson/quoda/EditorPanel$25;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/EditorPanel$25;-><init>(Lcom/henrythompson/quoda/EditorPanel;Landroid/widget/Spinner;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    invoke-virtual {v6, v11, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v14, 0x4

    new-instance v0, Lcom/henrythompson/quoda/EditorPanel$26;

    invoke-direct {v0, p0, v4, v5}, Lcom/henrythompson/quoda/EditorPanel$26;-><init>(Lcom/henrythompson/quoda/EditorPanel;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v14, 0x7

    const v0, 0x7f0d002e

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v14, 0x0

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    const/4 v14, 0x6

    invoke-virtual {v7}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 v14, 0x7

    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    const/4 v14, 0x2

    nop

    return-void

    const/4 v8, 0x4
.end method

.method public showPropertiesDialog()V
    .locals 23

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v19, 0x7f0d00e7

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v19

    const v20, 0x7f0a002e

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v19, 0x7f080076

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v19, 0x7f0d00e0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v19, 0x7f080077

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getFilePath()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_0

    const v19, 0x7f0d00e6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const v19, 0x7f0d00e1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v14, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v19, 0x7f080078

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v19, 0x7f0d00e2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/henrythompson/quoda/utils/Utils;->getFileTypeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v19, 0x7f080073

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getBaseURL()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_2

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getBaseURL()Ljava/lang/String;

    move-result-object v19

    const-string v20, "\uffff"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    const v19, 0x7f0d00e5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v16

    :goto_1
    const v19, 0x7f0d00dd

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v16, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v19, 0x7f080075

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v19, 0x7f0d00df

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getEncoding()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v19, 0x7f08007b

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v19, 0x7f0d00e4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getLinebreakCode()I

    move-result v22

    invoke-static/range {v22 .. v22}, Lcom/henrythompson/quoda/LineBreak;->toStringWithDescription(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/henrythompson/quoda/WordCounter;->count(Landroid/widget/TextView;)Lcom/henrythompson/quoda/WordCounter$WordCountResult;

    move-result-object v15

    const v19, 0x7f08007c

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    const v19, 0x7f0d00e8

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v15, Lcom/henrythompson/quoda/WordCounter$WordCountResult;->words:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v19, 0x7f080074

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v19, 0x7f0d00de

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    iget v0, v15, Lcom/henrythompson/quoda/WordCounter$WordCountResult;->charactrers:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v19, 0x7f08007a

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v19, 0x7f0d00e3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/henrythompson/quoda/document/Document;->getLineCount()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog;->show()V

    nop

    return-void

    const/4 v11, 0x7

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/EditorPanel;->mFilesystemsManager:Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-object/from16 v19, v0

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getFilesystem()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v10

    invoke-virtual {v10}, Lcom/henrythompson/quoda/filesystem/Filesystem;->getProtocolPrefix()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getFilePath()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    const/4 v3, 0x5

    :cond_1
    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getBaseURL()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    const/4 v14, 0x3

    :cond_2
    const v19, 0x7f0d00e5

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/EditorPanel;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    const/4 v8, 0x1
.end method

.method public showToast(I)V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v1, 0x1
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x4

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public startSettingsActivity()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorPanel;->startSettingsActivity(Ljava/lang/String;)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public startSettingsActivity(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x6

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/henrythompson/quoda/settings/SettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x7

    if-eqz p1, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x3

    const-string v1, ":android:show_fragment"

    const-class v2, Lcom/henrythompson/quoda/settings/SettingsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x4

    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v3, 0x7

    :cond_0
    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorPanel;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x5

    nop

    return-void

    const/4 v2, 0x5
.end method

.method public toggleSelectedLineBookmarked()V
    .locals 5

    const/4 v4, 0x3

    const/4 v4, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    const/4 v4, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorPanel;->mCodeView:Lcom/henrythompson/quoda/CodeView;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/LineObject;->getIsBookmarked()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    const/4 v4, 0x6

    :goto_0
    invoke-virtual {p0, v2, v0}, Lcom/henrythompson/quoda/EditorPanel;->setLineBookmarked(IZ)V

    const/4 v4, 0x3

    nop

    return-void

    const/4 v3, 0x2

    const/4 v4, 0x2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x0
.end method

.method public updateDocumentSwitcher()V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentSwitcher:Landroid/widget/Button;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x5

    :goto_0
    nop

    return-void

    const/4 v1, 0x3

    const/4 v2, 0x0

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorPanel;->mDocumentSwitcher:Landroid/widget/Button;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    const/4 v0, 0x0
.end method

.method public upgradeToPremium()V
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x7

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorPanel;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/henrythompson/quoda/UpgradeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    const-string v1, "trigger"

    const-string v2, "menu"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x5

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorPanel;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x4

    nop

    return-void

    const/4 v1, 0x3
.end method
