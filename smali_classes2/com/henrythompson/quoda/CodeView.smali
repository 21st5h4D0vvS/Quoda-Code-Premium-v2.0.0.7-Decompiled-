.class public Lcom/henrythompson/quoda/CodeView;
.super Landroid/widget/EditText;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;,
        Lcom/henrythompson/quoda/CodeView$ShortcutListener;,
        Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;
    }
.end annotation


# static fields
.field private static final MODE_NORMAL:I = 0x0

.field private static final MODE_SNIPPET:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CodeView"


# instance fields
.field ORANGE:I

.field YELLOW:I

.field private autoCompletionEnabled:Z

.field icount:I

.field private initializationComplete:Z

.field isAutoIndenting:Z

.field private isDoingUndoRedo:Z

.field public isSwitchingDocuments:Z

.field private isSyntaxHighlighting:Z

.field private isUpdatingSnippet:Z

.field private mAddedTextCount:I

.field mAltPressed:Z

.field mBottomDirtyLine:I

.field private mBraceMatchEnd:I

.field private mBraceMatchStart:I

.field private mBracePaint:Landroid/graphics/Paint;

.field mCtrlPressed:Z

.field private mDocumentUuid:Ljava/lang/String;

.field private mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

.field private mFindResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/FindEngine$FindResult;",
            ">;"
        }
    .end annotation
.end field

.field private mGutterBackgroundPaint:Landroid/graphics/Paint;

.field mGutterWidth:I

.field private mIdealMargin:I

.field private mIsHandlingShortcut:Z

.field mLineNumberDigitCount:I

.field private mLineNumberPaint:Landroid/graphics/Paint;

.field private mLinePaint:Landroid/graphics/Paint;

.field private mMarkedLineBackgroundPaint:Landroid/graphics/Paint;

.field private mMarkedLineNumberPaint:Landroid/graphics/Paint;

.field mMaximumVelocity:I

.field private mMode:I

.field private mNewText:Ljava/lang/String;

.field private mOldText:Ljava/lang/String;

.field mOldY:I

.field mOnTextChangedChangeEnd:I

.field mOnTextChangedChangeStart:I

.field mOnTextChangedNewText:Ljava/lang/String;

.field private mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

.field mPreviousTouchX:F

.field mPreviousTouchY:F

.field private mScrollChangedListeners:[Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;

.field mScroller:Landroid/widget/Scroller;

.field mSelectedFindResult:I

.field private mSelectedLinePaint:Landroid/graphics/Paint;

.field mShiftPressed:Z

.field private mShortcutListener:Lcom/henrythompson/quoda/CodeView$ShortcutListener;

.field private mShowLineNumbers:Z

.field private mSuggestionsHandler:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field mTopDirtyLine:I

.field private mUndoRedoEnabledListener:Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;

.field mUpdateUndoRedo_LastChange:Lcom/henrythompson/quoda/UndoStack$TextChange;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mWordWrapEnabled:Z

.field private syntaxHighlightingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x4

    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x2

    iput-boolean v2, p0, Lcom/henrythompson/quoda/CodeView;->mShowLineNumbers:Z

    const/4 v4, 0x4

    const-string v0, ""

    iput-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentUuid:Ljava/lang/String;

    const/4 v4, 0x2

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mMode:I

    const/4 v4, 0x1

    iput-boolean v2, p0, Lcom/henrythompson/quoda/CodeView;->syntaxHighlightingEnabled:Z

    const/4 v4, 0x1

    iput-boolean v2, p0, Lcom/henrythompson/quoda/CodeView;->autoCompletionEnabled:Z

    const/4 v4, 0x4

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isDoingUndoRedo:Z

    const/4 v4, 0x4

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isSyntaxHighlighting:Z

    const/4 v4, 0x6

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isUpdatingSnippet:Z

    const/4 v4, 0x3

    new-array v0, v1, [Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;

    iput-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mScrollChangedListeners:[Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;

    const/4 v4, 0x5

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->initializationComplete:Z

    const/4 v4, 0x2

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->mIsHandlingShortcut:Z

    const/4 v4, 0x7

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mAddedTextCount:I

    const/4 v4, 0x0

    new-instance v0, Lcom/henrythompson/quoda/CodeView$1;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/CodeView$1;-><init>(Lcom/henrythompson/quoda/CodeView;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mTextWatcher:Landroid/text/TextWatcher;

    const/4 v4, 0x3

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mLineNumberDigitCount:I

    const/4 v4, 0x1

    iput v2, p0, Lcom/henrythompson/quoda/CodeView;->icount:I

    const/4 v4, 0x2

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isAutoIndenting:Z

    const/4 v4, 0x1

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mTopDirtyLine:I

    const/4 v4, 0x6

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mBottomDirtyLine:I

    const/4 v4, 0x3

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    const/4 v4, 0x0

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->mCtrlPressed:Z

    const/4 v4, 0x0

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->mShiftPressed:Z

    const/4 v4, 0x6

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->mAltPressed:Z

    const/4 v4, 0x4

    iput v3, p0, Lcom/henrythompson/quoda/CodeView;->mPreviousTouchX:F

    const/4 v4, 0x7

    iput v3, p0, Lcom/henrythompson/quoda/CodeView;->mPreviousTouchY:F

    const/4 v4, 0x6

    const/16 v0, -0x7400

    iput v0, p0, Lcom/henrythompson/quoda/CodeView;->ORANGE:I

    const/4 v4, 0x3

    const/16 v0, -0x100

    iput v0, p0, Lcom/henrythompson/quoda/CodeView;->YELLOW:I

    const/4 v4, 0x4

    const/4 v0, -0x1

    iput v0, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x4

    :goto_0
    nop

    return-void

    const/4 v2, 0x3

    const/4 v4, 0x2

    :cond_0
    invoke-direct {p0}, Lcom/henrythompson/quoda/CodeView;->initCodeView()V

    goto :goto_0

    const/4 v1, 0x3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x2

    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v4, 0x5

    iput-boolean v2, p0, Lcom/henrythompson/quoda/CodeView;->mShowLineNumbers:Z

    const/4 v4, 0x2

    const-string v0, ""

    iput-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentUuid:Ljava/lang/String;

    const/4 v4, 0x5

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mMode:I

    const/4 v4, 0x0

    iput-boolean v2, p0, Lcom/henrythompson/quoda/CodeView;->syntaxHighlightingEnabled:Z

    const/4 v4, 0x1

    iput-boolean v2, p0, Lcom/henrythompson/quoda/CodeView;->autoCompletionEnabled:Z

    const/4 v4, 0x3

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isDoingUndoRedo:Z

    const/4 v4, 0x0

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isSyntaxHighlighting:Z

    const/4 v4, 0x1

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isUpdatingSnippet:Z

    const/4 v4, 0x0

    new-array v0, v1, [Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;

    iput-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mScrollChangedListeners:[Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;

    const/4 v4, 0x3

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->initializationComplete:Z

    const/4 v4, 0x2

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->mIsHandlingShortcut:Z

    const/4 v4, 0x2

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mAddedTextCount:I

    const/4 v4, 0x5

    new-instance v0, Lcom/henrythompson/quoda/CodeView$1;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/CodeView$1;-><init>(Lcom/henrythompson/quoda/CodeView;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mTextWatcher:Landroid/text/TextWatcher;

    const/4 v4, 0x3

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mLineNumberDigitCount:I

    const/4 v4, 0x6

    iput v2, p0, Lcom/henrythompson/quoda/CodeView;->icount:I

    const/4 v4, 0x4

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isAutoIndenting:Z

    const/4 v4, 0x5

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mTopDirtyLine:I

    const/4 v4, 0x2

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mBottomDirtyLine:I

    const/4 v4, 0x0

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    const/4 v4, 0x4

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->mCtrlPressed:Z

    const/4 v4, 0x6

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->mShiftPressed:Z

    const/4 v4, 0x1

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->mAltPressed:Z

    const/4 v4, 0x3

    iput v3, p0, Lcom/henrythompson/quoda/CodeView;->mPreviousTouchX:F

    const/4 v4, 0x1

    iput v3, p0, Lcom/henrythompson/quoda/CodeView;->mPreviousTouchY:F

    const/4 v4, 0x3

    const/16 v0, -0x7400

    iput v0, p0, Lcom/henrythompson/quoda/CodeView;->ORANGE:I

    const/4 v4, 0x3

    const/16 v0, -0x100

    iput v0, p0, Lcom/henrythompson/quoda/CodeView;->YELLOW:I

    const/4 v4, 0x7

    const/4 v0, -0x1

    iput v0, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x5

    :goto_0
    nop

    return-void

    const/4 v4, 0x1

    const/4 v4, 0x1

    :cond_0
    invoke-direct {p0}, Lcom/henrythompson/quoda/CodeView;->initCodeView()V

    goto :goto_0

    const/4 v0, 0x4
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, 0x2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v4, 0x2

    iput-boolean v2, p0, Lcom/henrythompson/quoda/CodeView;->mShowLineNumbers:Z

    const/4 v4, 0x5

    const-string v0, ""

    iput-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentUuid:Ljava/lang/String;

    const/4 v4, 0x0

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mMode:I

    const/4 v4, 0x5

    iput-boolean v2, p0, Lcom/henrythompson/quoda/CodeView;->syntaxHighlightingEnabled:Z

    const/4 v4, 0x3

    iput-boolean v2, p0, Lcom/henrythompson/quoda/CodeView;->autoCompletionEnabled:Z

    const/4 v4, 0x3

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isDoingUndoRedo:Z

    const/4 v4, 0x1

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isSyntaxHighlighting:Z

    const/4 v4, 0x6

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isUpdatingSnippet:Z

    const/4 v4, 0x6

    new-array v0, v1, [Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;

    iput-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mScrollChangedListeners:[Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;

    const/4 v4, 0x5

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->initializationComplete:Z

    const/4 v4, 0x7

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->mIsHandlingShortcut:Z

    const/4 v4, 0x1

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mAddedTextCount:I

    const/4 v4, 0x1

    new-instance v0, Lcom/henrythompson/quoda/CodeView$1;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/CodeView$1;-><init>(Lcom/henrythompson/quoda/CodeView;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mTextWatcher:Landroid/text/TextWatcher;

    const/4 v4, 0x5

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mLineNumberDigitCount:I

    const/4 v4, 0x4

    iput v2, p0, Lcom/henrythompson/quoda/CodeView;->icount:I

    const/4 v4, 0x4

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isAutoIndenting:Z

    const/4 v4, 0x4

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mTopDirtyLine:I

    const/4 v4, 0x2

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mBottomDirtyLine:I

    const/4 v4, 0x1

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    const/4 v4, 0x0

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->mCtrlPressed:Z

    const/4 v4, 0x1

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->mShiftPressed:Z

    const/4 v4, 0x5

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->mAltPressed:Z

    const/4 v4, 0x3

    iput v3, p0, Lcom/henrythompson/quoda/CodeView;->mPreviousTouchX:F

    const/4 v4, 0x6

    iput v3, p0, Lcom/henrythompson/quoda/CodeView;->mPreviousTouchY:F

    const/4 v4, 0x2

    const/16 v0, -0x7400

    iput v0, p0, Lcom/henrythompson/quoda/CodeView;->ORANGE:I

    const/4 v4, 0x0

    const/16 v0, -0x100

    iput v0, p0, Lcom/henrythompson/quoda/CodeView;->YELLOW:I

    const/4 v4, 0x5

    const/4 v0, -0x1

    iput v0, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x3

    :goto_0
    nop

    return-void

    const/4 v2, 0x3

    const/4 v4, 0x4

    :cond_0
    invoke-direct {p0}, Lcom/henrythompson/quoda/CodeView;->initCodeView()V

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/CodeView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    goto :goto_0

    const/4 v1, 0x7
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/CodeView;)I
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    iget v0, p0, Lcom/henrythompson/quoda/CodeView;->mAddedTextCount:I

    return v0

    const/4 v0, 0x2
.end method

.method static synthetic access$002(Lcom/henrythompson/quoda/CodeView;I)I
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x1

    iput p1, p0, Lcom/henrythompson/quoda/CodeView;->mAddedTextCount:I

    return p1

    const/4 v0, 0x6
.end method

.method static synthetic access$100(Lcom/henrythompson/quoda/CodeView;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mNewText:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x5
.end method

.method static synthetic access$1000(Lcom/henrythompson/quoda/CodeView;Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->handleTabInsertedOnTextChangedSnippet(Ljava/lang/CharSequence;III)V

    nop

    return-void

    const/4 v0, 0x2
.end method

.method static synthetic access$102(Lcom/henrythompson/quoda/CodeView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/CodeView;->mNewText:Ljava/lang/String;

    return-object p1

    const/4 v0, 0x6
.end method

.method static synthetic access$1100(Lcom/henrythompson/quoda/CodeView;Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->updateSnippetOnTextChanged(Ljava/lang/CharSequence;III)V

    nop

    return-void

    const/4 v0, 0x1
.end method

.method static synthetic access$1200(Lcom/henrythompson/quoda/CodeView;Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->handleShortcutOnTextChanged(Ljava/lang/CharSequence;III)V

    nop

    return-void

    const/4 v0, 0x6
.end method

.method static synthetic access$1302(Lcom/henrythompson/quoda/CodeView;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/CodeView;->mOldText:Ljava/lang/String;

    return-object p1

    const/4 v0, 0x6
.end method

.method static synthetic access$1400(Lcom/henrythompson/quoda/CodeView;)Lcom/henrythompson/quoda/QuodaPreferences;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    return-object v0

    const/4 v0, 0x7
.end method

.method static synthetic access$1500(Lcom/henrythompson/quoda/CodeView;ZZZC)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->handleShortcut(ZZZC)V

    nop

    return-void

    const/4 v0, 0x1
.end method

.method static synthetic access$1602(Lcom/henrythompson/quoda/CodeView;I)I
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x5

    iput p1, p0, Lcom/henrythompson/quoda/CodeView;->mBraceMatchStart:I

    return p1

    const/4 v0, 0x0
.end method

.method static synthetic access$1702(Lcom/henrythompson/quoda/CodeView;I)I
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x0

    iput p1, p0, Lcom/henrythompson/quoda/CodeView;->mBraceMatchEnd:I

    return p1

    const/4 v0, 0x6
.end method

.method static synthetic access$1800(Lcom/henrythompson/quoda/CodeView;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/henrythompson/quoda/CodeView;->findBraceMatches()V

    nop

    return-void

    const/4 v0, 0x6
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/CodeView;)I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    iget v0, p0, Lcom/henrythompson/quoda/CodeView;->mMode:I

    return v0

    const/4 v1, 0x0
.end method

.method static synthetic access$300(Lcom/henrythompson/quoda/CodeView;)Z
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->mIsHandlingShortcut:Z

    return v0

    const/4 v1, 0x1
.end method

.method static synthetic access$302(Lcom/henrythompson/quoda/CodeView;Z)Z
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/henrythompson/quoda/CodeView;->mIsHandlingShortcut:Z

    return p1

    const/4 v0, 0x4
.end method

.method static synthetic access$400(Lcom/henrythompson/quoda/CodeView;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->initializationComplete:Z

    return v0

    const/4 v0, 0x0
.end method

.method static synthetic access$402(Lcom/henrythompson/quoda/CodeView;Z)Z
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x5

    iput-boolean p1, p0, Lcom/henrythompson/quoda/CodeView;->initializationComplete:Z

    return p1

    const/4 v0, 0x0
.end method

.method static synthetic access$500(Lcom/henrythompson/quoda/CodeView;)Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isSyntaxHighlighting:Z

    return v0

    const/4 v0, 0x1
.end method

.method static synthetic access$600(Lcom/henrythompson/quoda/CodeView;)Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isUpdatingSnippet:Z

    return v0

    const/4 v1, 0x1
.end method

.method static synthetic access$700(Lcom/henrythompson/quoda/CodeView;)Lcom/henrythompson/quoda/document/DocumentsManager;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    return-object v0

    const/4 v1, 0x6
.end method

.method static synthetic access$800(Lcom/henrythompson/quoda/CodeView;I)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/CodeView;->setMode(I)V

    nop

    return-void

    const/4 v0, 0x4
.end method

.method static synthetic access$900(Lcom/henrythompson/quoda/CodeView;Ljava/lang/CharSequence;III)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->handleTabInsertedOnTextChangedNormal(Ljava/lang/CharSequence;III)V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method private findBraceMatches()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    new-instance v0, Lcom/henrythompson/quoda/CodeView$9;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/CodeView$9;-><init>(Lcom/henrythompson/quoda/CodeView;)V

    invoke-static {v0}, Lcom/henrythompson/quoda/QuodaApplication;->performOnBackgroundThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x0
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x1

    :goto_0
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x7

    :goto_1
    return-object v0

    const/4 v0, 0x1

    const/4 v2, 0x5

    :cond_0
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    const/4 v2, 0x6

    const/4 v2, 0x0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    const/4 v0, 0x2
.end method

.method private handleShortcut(ZZZC)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v1, p4, p1, p2, p3}, Lcom/henrythompson/quoda/QuodaPreferences;->getActionForKeybinding(CZZZ)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x4

    iput-boolean v2, p0, Lcom/henrythompson/quoda/CodeView;->mCtrlPressed:Z

    const/4 v3, 0x7

    iput-boolean v2, p0, Lcom/henrythompson/quoda/CodeView;->mShiftPressed:Z

    const/4 v3, 0x7

    iput-boolean v2, p0, Lcom/henrythompson/quoda/CodeView;->mAltPressed:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mShortcutListener:Lcom/henrythompson/quoda/CodeView$ShortcutListener;

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mShortcutListener:Lcom/henrythompson/quoda/CodeView$ShortcutListener;

    invoke-interface {v1, v0}, Lcom/henrythompson/quoda/CodeView$ShortcutListener;->onKeyShortcut(Ljava/lang/String;)V

    const/4 v3, 0x0

    :cond_0
    nop

    return-void

    const/4 v2, 0x6
.end method

.method private handleShortcutOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 8

    const/4 v7, 0x4

    const/4 v1, 0x1

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/henrythompson/quoda/CodeView;->mOldText:Ljava/lang/String;

    const/4 v7, 0x0

    if-ne p4, v1, :cond_2

    const/4 v7, 0x7

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v7, 0x2

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->mShiftPressed:Z

    const/4 v7, 0x7

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v5

    const/4 v7, 0x1

    :goto_0
    new-instance v0, Lcom/henrythompson/quoda/CodeView$5;

    move-object v1, p0

    move v2, p2

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/CodeView$5;-><init>(Lcom/henrythompson/quoda/CodeView;IILjava/lang/String;C)V

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/CodeView;->post(Ljava/lang/Runnable;)Z

    const/4 v7, 0x2

    :cond_0
    :goto_1
    nop

    return-void

    const/4 v5, 0x0

    const/4 v7, 0x0

    :cond_1
    move v5, v6

    goto :goto_0

    const/4 v3, 0x4

    const/4 v7, 0x2

    :cond_2
    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->mIsHandlingShortcut:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->initializationComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isSyntaxHighlighting:Z

    if-nez v0, :cond_0

    const/4 v7, 0x4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->updateDocumentOnTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v7, 0x2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->updateUndoRedoOnTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_1

    const/4 v3, 0x0
.end method

.method private handleTabInsertedOnTextChangedNormal(Ljava/lang/CharSequence;III)V
    .locals 10

    const/4 v9, 0x4

    const/16 v6, 0x3d

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/16 v3, 0x3d

    const/4 v9, 0x7

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v8, v6}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v9, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView;->mSuggestionsHandler:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v9, 0x3

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView;->mSuggestionsHandler:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-virtual {v5, v6, v1}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v9, 0x5

    :goto_0
    nop

    return-void

    const/4 v7, 0x4

    const/4 v9, 0x4

    :cond_0
    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v4

    const/4 v9, 0x6

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v5

    add-int v6, p2, p3

    invoke-virtual {v5, v6}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v0

    const/4 v9, 0x2

    if-eq v4, v0, :cond_1

    const/4 v9, 0x6

    iput-boolean v7, p0, Lcom/henrythompson/quoda/CodeView;->mIsHandlingShortcut:Z

    const/4 v9, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v5

    add-int v6, p2, p4

    iget-object v7, p0, Lcom/henrythompson/quoda/CodeView;->mOldText:Ljava/lang/String;

    invoke-interface {v5, p2, v6, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v9, 0x7

    add-int v5, p2, p3

    invoke-virtual {p0, p2, v5}, Lcom/henrythompson/quoda/CodeView;->setSelection(II)V

    const/4 v9, 0x0

    iput-boolean v8, p0, Lcom/henrythompson/quoda/CodeView;->mIsHandlingShortcut:Z

    const/4 v9, 0x6

    iget-boolean v2, p0, Lcom/henrythompson/quoda/CodeView;->mShiftPressed:Z

    const/4 v9, 0x2

    new-instance v5, Lcom/henrythompson/quoda/CodeView$3;

    invoke-direct {v5, p0, v2}, Lcom/henrythompson/quoda/CodeView$3;-><init>(Lcom/henrythompson/quoda/CodeView;Z)V

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/CodeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    const/4 v2, 0x3

    const/4 v9, 0x1

    :cond_1
    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v5}, Lcom/henrythompson/quoda/QuodaPreferences;->getUseSpaces()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v9, 0x4

    iput-boolean v7, p0, Lcom/henrythompson/quoda/CodeView;->mIsHandlingShortcut:Z

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v5

    add-int v6, p2, p4

    iget-object v7, p0, Lcom/henrythompson/quoda/CodeView;->mOldText:Ljava/lang/String;

    invoke-interface {v5, p2, v6, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v9, 0x1

    iput-boolean v8, p0, Lcom/henrythompson/quoda/CodeView;->mIsHandlingShortcut:Z

    const/4 v9, 0x6

    new-instance v5, Lcom/henrythompson/quoda/CodeView$4;

    invoke-direct {v5, p0, p2, p3}, Lcom/henrythompson/quoda/CodeView$4;-><init>(Lcom/henrythompson/quoda/CodeView;II)V

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/CodeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    const/4 v9, 0x7

    const/4 v9, 0x7

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->updateDocumentOnTextChanged(Ljava/lang/CharSequence;III)V

    const/4 v9, 0x3

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->updateUndoRedoOnTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    const/4 v7, 0x7
.end method

.method private handleTabInsertedOnTextChangedSnippet(Ljava/lang/CharSequence;III)V
    .locals 4

    const/4 v3, 0x0

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mOldText:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->mIsHandlingShortcut:Z

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v1

    add-int v2, p2, p4

    invoke-interface {v1, p2, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v3, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->mIsHandlingShortcut:Z

    const/4 v3, 0x7

    new-instance v1, Lcom/henrythompson/quoda/CodeView$2;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/CodeView$2;-><init>(Lcom/henrythompson/quoda/CodeView;)V

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/CodeView;->post(Ljava/lang/Runnable;)Z

    const/4 v3, 0x7

    nop

    return-void

    const/4 v0, 0x4
.end method

.method private initCodeView()V
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    const/4 v3, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    const/4 v3, 0x0

    const/16 v1, 0x30

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/CodeView;->setGravity(I)V

    const/4 v3, 0x7

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/CodeView;->setGravity(I)V

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e00a9

    invoke-virtual {p0, v1, v2}, Lcom/henrythompson/quoda/CodeView;->setTextAppearance(Landroid/content/Context;I)V

    const/4 v3, 0x2

    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mMaximumVelocity:I

    const/4 v3, 0x7

    const/16 v1, 0x8

    invoke-static {v1}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v1

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mIdealMargin:I

    const/4 v3, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/QuodaPreferences;->getLineNumbersEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->mShowLineNumbers:Z

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/CodeView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 v3, 0x4

    new-instance v1, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-direct {p0}, Lcom/henrythompson/quoda/CodeView;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;-><init>(Lcom/henrythompson/quoda/CodeView;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mSuggestionsHandler:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    const/4 v3, 0x7

    nop

    return-void

    const/4 v2, 0x5
.end method

.method private processAutoIndentBracesAndQuotes(Ljava/lang/CharSequence;III)[Ljava/lang/String;
    .locals 11

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v8

    if-eqz v8, :cond_e

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v8

    invoke-virtual {v8}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v8

    invoke-virtual {v8}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v8

    invoke-virtual {v8}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_0
    if-nez v4, :cond_1

    const-string v4, ""

    :cond_1
    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/QuodaPreferences;->getAutoCloseQuoteEnabled()Z

    move-result v1

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/QuodaPreferences;->getAutoCloseBracketEnabled()Z

    move-result v0

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mNewText:Ljava/lang/String;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/QuodaPreferences;->getAutoindentEnabled()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-virtual {p0, p2}, Lcom/henrythompson/quoda/CodeView;->getIndentationForOffset(I)Ljava/lang/String;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/2addr v8, p2

    add-int/lit8 v6, v8, 0x1

    if-lez p2, :cond_2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p2, -0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x7b

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/QuodaPreferences;->getUserSpecifiedTab()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/2addr v8, p2

    add-int/lit8 v6, v8, 0x1

    :cond_2
    add-int/lit8 v8, p2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    if-ge v8, v9, :cond_3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p2, 0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x7d

    if-ne v8, v9, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-lez p2, :cond_6

    const-string v8, "html"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "xml"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    :cond_4
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p2, -0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x3e

    if-ne v8, v9, :cond_6

    const/4 v8, 0x2

    if-lt p2, v8, :cond_6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p2, -0x2

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-eq v8, v9, :cond_6

    add-int/lit16 v5, p2, -0x3e8

    if-gez v5, :cond_5

    const/4 v5, 0x0

    :cond_5
    add-int/lit8 v2, p2, -0x2

    :goto_0
    if-lt v2, v5, :cond_6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_7

    :cond_6
    :goto_1
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    :goto_2
    return-object v8

    const/4 v8, 0x7

    :cond_7
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x3c

    if-ne v8, v9, :cond_9

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x5f

    if-ne v8, v9, :cond_9

    :cond_8
    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/QuodaPreferences;->getUserSpecifiedTab()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/2addr v8, p2

    add-int/lit8 v6, v8, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    if-ge p2, v8, :cond_6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p2, 0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x3c

    if-ne v8, v9, :cond_6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p2, 0x2

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-ne v8, v9, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    const/4 v10, 0x6

    :cond_9
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x3c

    if-ne v8, v9, :cond_a

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, v2, 0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x2f

    if-eq v8, v9, :cond_6

    :cond_a
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    const/4 v0, 0x6

    :cond_b
    if-eqz v1, :cond_10

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mNewText:Ljava/lang/String;

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    if-lt v8, v9, :cond_c

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "\""

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x3

    add-int/lit8 v10, p2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto/16 :goto_2

    const/4 v1, 0x1

    :cond_c
    const/4 v8, 0x1

    if-lt p2, v8, :cond_d

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p2, 0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x22

    if-ne v8, v9, :cond_d

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p2, -0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    if-eq v8, v9, :cond_d

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, ""

    aput-object v10, v8, v9

    const/4 v9, 0x3

    add-int/lit8 v10, p2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto/16 :goto_2

    const/4 v7, 0x6

    :cond_d
    const/4 v8, 0x1

    if-lt p2, v8, :cond_f

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p2, 0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x22

    if-ne v8, v9, :cond_f

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p2, -0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    if-ne v8, v9, :cond_f

    :cond_e
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    aput-object v10, v8, v9

    goto/16 :goto_2

    const/4 v3, 0x0

    :cond_f
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "\""

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x3

    add-int/lit8 v10, p2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto/16 :goto_2

    const/4 v6, 0x4

    :cond_10
    if-eqz v1, :cond_15

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mNewText:Ljava/lang/String;

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    if-lt v8, v9, :cond_11

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "\'"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x3

    add-int/lit8 v10, p2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto/16 :goto_2

    const/4 v5, 0x7

    :cond_11
    add-int/lit8 v8, p2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    if-lt v8, v9, :cond_12

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "\'"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x3

    add-int/lit8 v10, p2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto/16 :goto_2

    const/4 v3, 0x0

    :cond_12
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p2, 0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x27

    if-ne v8, v9, :cond_13

    if-lez p2, :cond_13

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p2, -0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    if-eq v8, v9, :cond_13

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, ""

    aput-object v10, v8, v9

    const/4 v9, 0x3

    add-int/lit8 v10, p2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto/16 :goto_2

    const/4 v5, 0x0

    :cond_13
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p2, 0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x27

    if-ne v8, v9, :cond_14

    if-lez p2, :cond_14

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p2, -0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x5c

    if-eq v8, v9, :cond_e

    :cond_14
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "\'"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x3

    add-int/lit8 v10, p2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto/16 :goto_2

    const/4 v8, 0x4

    :cond_15
    if-eqz v0, :cond_16

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mNewText:Ljava/lang/String;

    const-string v9, "{"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "}"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x3

    add-int/lit8 v10, p2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto/16 :goto_2

    const/4 v3, 0x2

    :cond_16
    if-eqz v0, :cond_17

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mNewText:Ljava/lang/String;

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    if-ge v8, v9, :cond_e

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p2, 0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x7d

    if-ne v8, v9, :cond_e

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, ""

    aput-object v10, v8, v9

    const/4 v9, 0x3

    add-int/lit8 v10, p2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto/16 :goto_2

    const/4 v10, 0x7

    :cond_17
    if-eqz v0, :cond_18

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mNewText:Ljava/lang/String;

    const-string v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, ")"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x3

    add-int/lit8 v10, p2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto/16 :goto_2

    const/4 v2, 0x4

    :cond_18
    if-eqz v0, :cond_19

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mNewText:Ljava/lang/String;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    if-ge v8, v9, :cond_e

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p2, 0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x29

    if-ne v8, v9, :cond_e

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, ""

    aput-object v10, v8, v9

    const/4 v9, 0x3

    add-int/lit8 v10, p2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto/16 :goto_2

    const/4 v2, 0x5

    :cond_19
    if-eqz v0, :cond_1a

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mNewText:Ljava/lang/String;

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string v10, "]"

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x3

    add-int/lit8 v10, p2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto/16 :goto_2

    const/4 v8, 0x7

    :cond_1a
    if-eqz v0, :cond_e

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mNewText:Ljava/lang/String;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    if-ge v8, v9, :cond_e

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    add-int/lit8 v9, p2, 0x1

    invoke-interface {v8, v9}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    const/16 v9, 0x5d

    if-ne v8, v9, :cond_e

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/4 v10, 0x0

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string v10, ""

    aput-object v10, v8, v9

    const/4 v9, 0x3

    add-int/lit8 v10, p2, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    goto/16 :goto_2

    const/4 v9, 0x2
.end method

.method private setMode(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    iput p1, p0, Lcom/henrythompson/quoda/CodeView;->mMode:I

    const/4 v2, 0x0

    iget v0, p0, Lcom/henrythompson/quoda/CodeView;->mMode:I

    if-ne v0, v1, :cond_0

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setIsInSnippetMode(Z)V

    const/4 v2, 0x7

    :goto_0
    nop

    return-void

    const/4 v1, 0x0

    const/4 v2, 0x6

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->setIsInSnippetMode(Z)V

    goto :goto_0

    const/4 v2, 0x4
.end method

.method private shiftSpans(II)V
    .locals 9

    const/4 v8, 0x0

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v6}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    const/4 v8, 0x5

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getContextSpans()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v8, 0x7

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getSpans()Ljava/util/ArrayList;

    move-result-object v4

    const/4 v8, 0x3

    if-eqz v4, :cond_3

    const/4 v8, 0x7

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getSpans()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    const/4 v8, 0x7

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;

    const/4 v8, 0x3

    iget v6, v5, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->start:I

    if-lt v6, p1, :cond_0

    const/4 v8, 0x2

    iget v6, v5, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->start:I

    add-int/2addr v6, p2

    iput v6, v5, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->start:I

    const/4 v8, 0x0

    :cond_0
    iget v6, v5, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->end:I

    if-lt v6, p1, :cond_1

    const/4 v8, 0x7

    iget v6, v5, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->end:I

    add-int/2addr v6, p2

    iput v6, v5, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->end:I

    const/4 v8, 0x5

    :cond_1
    iget v6, v5, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->start:I

    iget v7, v5, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->end:I

    if-le v6, v7, :cond_2

    const/4 v8, 0x7

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getSpans()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v8, 0x0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v0, 0x2

    const/4 v8, 0x5

    :cond_3
    if-eqz v0, :cond_6

    const/4 v8, 0x0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    const/4 v8, 0x4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/henrythompson/quoda/styler/ContextSpan;

    const/4 v8, 0x7

    iget v6, v5, Lcom/henrythompson/quoda/styler/ContextSpan;->start:I

    if-lt v6, p1, :cond_4

    const/4 v8, 0x6

    iget v6, v5, Lcom/henrythompson/quoda/styler/ContextSpan;->start:I

    add-int/2addr v6, p2

    iput v6, v5, Lcom/henrythompson/quoda/styler/ContextSpan;->start:I

    const/4 v8, 0x5

    :cond_4
    iget v6, v5, Lcom/henrythompson/quoda/styler/ContextSpan;->end:I

    if-lt v6, p1, :cond_5

    const/4 v8, 0x5

    iget v6, v5, Lcom/henrythompson/quoda/styler/ContextSpan;->end:I

    add-int/2addr v6, p2

    iput v6, v5, Lcom/henrythompson/quoda/styler/ContextSpan;->end:I

    const/4 v8, 0x4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    const/4 v6, 0x5

    const/4 v8, 0x1

    :cond_6
    iget-object v6, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    if-eqz v6, :cond_a

    const/4 v8, 0x7

    const/4 v2, 0x0

    :goto_2
    iget-object v6, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_a

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/henrythompson/quoda/FindEngine$FindResult;

    const/4 v8, 0x6

    iget v6, v3, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    if-le p1, v6, :cond_7

    iget v6, v3, Lcom/henrythompson/quoda/FindEngine$FindResult;->end:I

    if-gt p1, v6, :cond_7

    const/4 v8, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v8, 0x7

    :cond_7
    iget v6, v3, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    if-le v6, p1, :cond_8

    const/4 v8, 0x7

    iget v6, v3, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    add-int/2addr v6, p2

    iput v6, v3, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    const/4 v8, 0x6

    :cond_8
    iget v6, v3, Lcom/henrythompson/quoda/FindEngine$FindResult;->end:I

    if-lt v6, p1, :cond_9

    const/4 v8, 0x3

    iget v6, v3, Lcom/henrythompson/quoda/FindEngine$FindResult;->end:I

    add-int/2addr v6, p2

    iput v6, v3, Lcom/henrythompson/quoda/FindEngine$FindResult;->end:I

    const/4 v8, 0x7

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    const/4 v1, 0x1

    const/4 v8, 0x7

    :cond_a
    nop

    return-void

    const/4 v7, 0x1
.end method

.method private updateSnippetOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v11

    invoke-virtual {v11}, Lcom/henrythompson/quoda/document/Document;->getCurrentlyInsertedSnippet()Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/henrythompson/quoda/snippet/Tabstop;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v11}, Lcom/henrythompson/quoda/document/Document;->getSnippetStart()I

    move-result v17

    invoke-virtual {v11}, Lcom/henrythompson/quoda/document/Document;->getSnippetEnd()I

    move-result v16

    invoke-virtual {v11}, Lcom/henrythompson/quoda/document/Document;->getSnippetStart()I

    move-result v30

    sub-int v28, p2, v30

    add-int v30, p2, p3

    invoke-virtual {v11}, Lcom/henrythompson/quoda/document/Document;->getSnippetStart()I

    move-result v31

    sub-int v27, v30, v31

    move-object/from16 v0, v23

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/snippet/Tabstop;->getSnippetContainingRange(II)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v7

    move-object/from16 v0, v23

    if-eq v7, v0, :cond_0

    invoke-virtual {v7}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabIndex()I

    move-result v30

    if-nez v30, :cond_1

    :cond_0
    new-instance v5, Lcom/henrythompson/quoda/UndoStack$TextChange;

    invoke-direct {v5}, Lcom/henrythompson/quoda/UndoStack$TextChange;-><init>()V

    move/from16 v0, p2

    iput v0, v5, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/CodeView;->mOldText:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iput-object v0, v5, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/CodeView;->mNewText:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iput-object v0, v5, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/henrythompson/quoda/UndoStack;->push(Lcom/henrythompson/quoda/UndoStack$TextChange;)V

    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/henrythompson/quoda/CodeView;->setMode(I)V

    :goto_0
    nop

    return-void

    const/4 v7, 0x5

    :cond_1
    invoke-virtual {v7}, Lcom/henrythompson/quoda/snippet/Tabstop;->getLength()I

    move-result v9

    invoke-virtual {v7}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStopStarts()Ljava/util/ArrayList;

    move-result-object v25

    const/4 v6, -0x1

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_2
    :goto_1
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_3

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    if-le v0, v6, :cond_2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v28

    if-gt v0, v1, :cond_2

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    const/4 v3, 0x7

    :cond_3
    sub-int v26, v28, v6

    sub-int v13, v27, v6

    invoke-direct/range {p0 .. p4}, Lcom/henrythompson/quoda/CodeView;->processAutoIndentBracesAndQuotes(Ljava/lang/CharSequence;III)[Ljava/lang/String;

    move-result-object v22

    const/16 v30, 0x0

    aget-object v30, v22, v30

    if-nez v30, :cond_4

    const/16 v30, 0x1

    aget-object v30, v22, v30

    if-eqz v30, :cond_8

    :cond_4
    const/16 v30, 0x0

    aget-object v30, v22, v30

    if-eqz v30, :cond_6

    const/16 v30, 0x0

    aget-object v21, v22, v30

    :goto_2
    const/16 v30, 0x1

    aget-object v30, v22, v30

    if-eqz v30, :cond_7

    const/16 v30, 0x1

    aget-object v20, v22, v30

    :goto_3
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/CodeView;->mNewText:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    :goto_4
    move/from16 v0, v26

    invoke-virtual {v7, v0, v13, v15}, Lcom/henrythompson/quoda/snippet/Tabstop;->replace(IILjava/lang/String;)V

    invoke-virtual {v7}, Lcom/henrythompson/quoda/snippet/Tabstop;->getLength()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/CodeView;->mNewText:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v30

    add-int v14, p2, v30

    sub-int v12, v8, v9

    invoke-virtual {v7}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabStopStarts()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v30

    :cond_5
    :goto_5
    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_a

    invoke-interface/range {v30 .. v30}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Integer;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v31

    add-int v31, v31, p2

    move/from16 v0, v31

    move/from16 v1, p2

    if-ge v0, v1, :cond_5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v31

    add-int v31, v31, p2

    add-int v31, v31, v8

    move/from16 v0, v31

    move/from16 v1, p2

    if-ge v0, v1, :cond_5

    add-int/2addr v14, v12

    goto :goto_5

    const/4 v8, 0x0

    :cond_6
    const-string v21, ""

    goto :goto_2

    const/4 v3, 0x5

    :cond_7
    const-string v20, ""

    goto :goto_3

    const/4 v10, 0x3

    :cond_8
    const/16 v30, 0x2

    aget-object v30, v22, v30

    if-eqz v30, :cond_9

    const/16 v30, 0x2

    aget-object v15, v22, v30

    goto :goto_4

    const/4 v0, 0x7

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/henrythompson/quoda/CodeView;->mNewText:Ljava/lang/String;

    goto :goto_4

    const/4 v10, 0x0

    :cond_a
    const/16 v30, 0x1

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/henrythompson/quoda/CodeView;->isUpdatingSnippet:Z

    invoke-virtual/range {v23 .. v23}, Lcom/henrythompson/quoda/snippet/Tabstop;->getValue()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget v4, v0, Lcom/henrythompson/quoda/CodeView;->mAddedTextCount:I

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v30

    add-int v31, v16, v4

    move-object/from16 v0, v30

    move/from16 v1, v17

    move/from16 v2, v31

    move-object/from16 v3, v29

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    new-instance v5, Lcom/henrythompson/quoda/UndoStack$TextChange;

    invoke-direct {v5}, Lcom/henrythompson/quoda/UndoStack$TextChange;-><init>()V

    move/from16 v0, v17

    iput v0, v5, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    move-object/from16 v0, v18

    iput-object v0, v5, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    move-object/from16 v0, v29

    iput-object v0, v5, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Lcom/henrythompson/quoda/UndoStack;->push(Lcom/henrythompson/quoda/UndoStack$TextChange;)V

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/henrythompson/quoda/CodeView;->isUpdatingSnippet:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/henrythompson/quoda/CodeView;->setSelection(I)V

    goto/16 :goto_0

    const/4 v9, 0x4
.end method


# virtual methods
.method public AfterDisplayedDocumentChanged()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    const/4 v1, 0x0

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/CodeView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->updateGutter()V

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->refresh()V

    const/4 v1, 0x2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    const/4 v1, 0x6

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public BeforeDisplayedDocumentChanged()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->abortFling()V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public abortFling()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v1, 0x1

    :cond_0
    nop

    return-void

    const/4 v0, 0x4
.end method

.method public addOnScrollChangedListener(Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;)V
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mScrollChangedListeners:[Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;

    const/4 v4, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mScrollChangedListeners:[Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;

    array-length v1, v3

    const/4 v4, 0x5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    const/4 v4, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mScrollChangedListeners:[Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    const/4 v4, 0x7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    const/4 v2, 0x2

    const/4 v4, 0x1

    :cond_0
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aput-object p1, v2, v3

    const/4 v4, 0x0

    iput-object v2, p0, Lcom/henrythompson/quoda/CodeView;->mScrollChangedListeners:[Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;

    const/4 v4, 0x0

    nop

    return-void

    const/4 v2, 0x2
.end method

.method public cancelSyntaxHighlight()V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/Language;->cancelStyler()V

    const/4 v2, 0x0

    :cond_0
    nop

    return-void

    const/4 v1, 0x2
.end method

.method public clearFindResults()V
    .locals 12

    const/4 v11, 0x0

    const/4 v11, 0x6

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    const/4 v11, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    const-class v10, Lcom/henrythompson/quoda/FindEngine$FindResult;

    invoke-interface {v7, v8, v9, v10}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/henrythompson/quoda/FindEngine$FindResult;

    const/4 v11, 0x6

    const/4 v1, 0x0

    :goto_0
    array-length v7, v5

    if-ge v1, v7, :cond_0

    const/4 v11, 0x6

    aget-object v4, v5, v1

    const/4 v11, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    const/4 v11, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v9, 0x0

    const/4 v11, 0x4

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingTop()I

    move-result v8

    add-int v6, v7, v8

    const/4 v11, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getHeight()I

    move-result v8

    add-int v0, v7, v8

    const/4 v11, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingLeft()I

    move-result v2

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getWidth()I

    move-result v3

    const/4 v11, 0x1

    const/4 v7, -0x1

    iput v7, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    const/4 v11, 0x0

    invoke-virtual {p0, v2, v6, v3, v0}, Lcom/henrythompson/quoda/CodeView;->invalidate(IIII)V

    const/4 v11, 0x1

    nop

    return-void

    const/4 v5, 0x4
.end method

.method public clearUndoRedoHistory()V
    .locals 3

    const/4 v2, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/UndoStack;->removeAll()V

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getRedoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/UndoStack;->removeAll()V

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mUndoRedoEnabledListener:Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mUndoRedoEnabledListener:Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;

    invoke-interface {v0, v1}, Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;->onUndoEnabledChanged(Z)V

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mUndoRedoEnabledListener:Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;

    invoke-interface {v0, v1}, Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;->onRedoEnabledChanged(Z)V

    const/4 v2, 0x5

    :cond_0
    nop

    return-void

    const/4 v1, 0x0
.end method

.method public commentOutLine()V
    .locals 6

    const/4 v5, 0x3

    const/4 v5, 0x7

    iget-object v4, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v2

    const/4 v5, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v1

    const/4 v5, 0x6

    if-le v2, v1, :cond_0

    const/4 v5, 0x5

    move v3, v2

    const/4 v5, 0x2

    move v2, v1

    const/4 v5, 0x4

    move v1, v3

    const/4 v5, 0x2

    :cond_0
    if-ne v2, v1, :cond_1

    const/4 v5, 0x5

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/CodeView;->commentOutLine(I)V

    const/4 v5, 0x0

    :goto_0
    nop

    return-void

    const/4 v5, 0x7

    const/4 v5, 0x0

    :cond_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->commentOutRange()V

    goto :goto_0

    const/4 v1, 0x4
.end method

.method public commentOutLine(I)V
    .locals 14

    const/4 v13, 0x6

    const/4 v13, 0x1

    iget-object v11, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v2

    const/4 v13, 0x0

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v6

    const/4 v13, 0x2

    invoke-virtual {v2, p1}, Lcom/henrythompson/quoda/document/Document;->getIndexForStartOfLine(I)I

    move-result v9

    const/4 v13, 0x5

    invoke-virtual {v2, p1}, Lcom/henrythompson/quoda/document/Document;->getIndexForEndOfLine(I)I

    move-result v3

    const/4 v13, 0x1

    if-ltz v9, :cond_0

    if-gez v3, :cond_1

    const/4 v13, 0x6

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v3, 0x4

    const/4 v13, 0x3

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x3

    move v4, v9

    const/4 v13, 0x6

    :goto_1
    if-ge v4, v3, :cond_2

    const/4 v13, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v13, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v13, 0x4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    const/4 v6, 0x2

    const/4 v13, 0x5

    :cond_2
    :goto_2
    if-ge v4, v3, :cond_3

    const/4 v13, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v13, 0x3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    const/4 v12, 0x1

    const/4 v13, 0x7

    :cond_3
    invoke-virtual {v6}, Lcom/henrythompson/quoda/language/Language;->getLineComment()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x2

    invoke-virtual {v6}, Lcom/henrythompson/quoda/language/Language;->getBlockCommentStart()Ljava/lang/String;

    move-result-object v1

    const/4 v13, 0x1

    invoke-virtual {v6}, Lcom/henrythompson/quoda/language/Language;->getBlockCommentEnd()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    if-eqz v7, :cond_4

    const/4 v13, 0x3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11, v9, v3, v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    const/4 v10, 0x3

    const/4 v13, 0x2

    :cond_4
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v13, 0x1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11, v9, v3, v8}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto/16 :goto_0

    const/4 v13, 0x2
.end method

.method public commentOutRange()V
    .locals 14

    const/4 v13, 0x1

    const/4 v13, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v8

    const/4 v13, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v2

    const/4 v13, 0x0

    iget-object v10, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v10}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    const/4 v13, 0x1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v5

    const/4 v13, 0x5

    const/4 v9, 0x0

    const/4 v13, 0x7

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getBlockCommentStart()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getBlockCommentEnd()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    const/4 v13, 0x2

    :cond_0
    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getLineComment()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    const/4 v13, 0x2

    const/4 v9, 0x1

    const/4 v13, 0x0

    :cond_1
    if-eqz v9, :cond_2

    const/4 v13, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v11

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getLineComment()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v13, 0x2

    invoke-virtual {v1, v8}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v3

    const/4 v13, 0x2

    add-int/lit8 v3, v3, 0x1

    const/4 v13, 0x6

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v6

    const/4 v13, 0x4

    move v4, v3

    :goto_0
    if-gt v4, v6, :cond_3

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLineCount()I

    move-result v10

    if-ge v4, v10, :cond_3

    const/4 v13, 0x3

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/CodeView;->commentOutLine(I)V

    const/4 v13, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    const/4 v12, 0x3

    const/4 v13, 0x0

    :cond_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10, v8, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v13, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getBlockCommentStart()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Lcom/henrythompson/quoda/language/Language;->getBlockCommentEnd()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-interface {v10, v8, v2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v13, 0x0

    :cond_3
    nop

    return-void

    const/4 v13, 0x1
.end method

.method public computeScroll()V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x0

    const/4 v2, 0x3

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/henrythompson/quoda/CodeView;->scrollTo(II)V

    goto :goto_0

    const/4 v2, 0x7
.end method

.method public copy()V
    .locals 5

    const/4 v4, 0x3

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectedText()Landroid/text/Editable;

    move-result-object v1

    const/4 v4, 0x6

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    const/4 v4, 0x0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    const/4 v4, 0x0

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x6

    :goto_0
    nop

    return-void

    const/4 v3, 0x0

    const/4 v4, 0x1

    :cond_0
    const v2, 0x7f0d00d4

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/CodeView;->showToast(I)V

    goto :goto_0

    const/4 v3, 0x4
.end method

.method public cut()V
    .locals 7

    const/4 v6, 0x4

    const/4 v6, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectedText()Landroid/text/Editable;

    move-result-object v1

    const/4 v6, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v6, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "clipboard"

    const/4 v6, 0x3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    const/4 v6, 0x0

    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v3

    if-le v2, v3, :cond_1

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v4

    const-string v5, ""

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v6, 0x5

    :goto_0
    nop

    return-void

    const/4 v2, 0x3

    const/4 v6, 0x1

    :cond_0
    const v2, 0x7f0d00d5

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/CodeView;->showToast(I)V

    goto :goto_0

    const/4 v0, 0x3

    const/4 v6, 0x3

    :cond_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v4

    const-string v5, ""

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    const/4 v6, 0x4
.end method

.method public generalAfterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x2

    new-instance v1, Lcom/henrythompson/quoda/CodeView$6;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/CodeView$6;-><init>(Lcom/henrythompson/quoda/CodeView;)V

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/CodeView;->post(Ljava/lang/Runnable;)Z

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getSpans()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isSyntaxHighlighting:Z

    if-nez v1, :cond_0

    const/4 v3, 0x3

    const/4 v1, -0x1

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v1

    iget v2, p0, Lcom/henrythompson/quoda/CodeView;->mAddedTextCount:I

    invoke-direct {p0, v1, v2}, Lcom/henrythompson/quoda/CodeView;->shiftSpans(II)V

    const/4 v3, 0x4

    :cond_0
    nop

    return-void

    const/4 v1, 0x4
.end method

.method public generalOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x3

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isDoingUndoRedo:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isAutoIndenting:Z

    if-nez v0, :cond_1

    const/4 v10, 0x2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView;->processAutoIndentBracesAndQuotes(Ljava/lang/CharSequence;III)[Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x3

    aget-object v0, v8, v1

    if-nez v0, :cond_0

    aget-object v0, v8, v2

    if-eqz v0, :cond_5

    const/4 v10, 0x7

    :cond_0
    aget-object v0, v8, v1

    if-eqz v0, :cond_2

    aget-object v7, v8, v1

    const/4 v10, 0x3

    :goto_0
    aget-object v0, v8, v2

    if-eqz v0, :cond_3

    aget-object v6, v8, v2

    const/4 v10, 0x0

    :goto_1
    const-string v0, ""

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v10, 0x0

    :cond_1
    :goto_2
    nop

    return-void

    const/4 v8, 0x0

    const/4 v10, 0x3

    :cond_2
    const-string v7, ""

    goto :goto_0

    const/4 v7, 0x5

    const/4 v10, 0x3

    :cond_3
    const-string v6, ""

    goto :goto_1

    const/4 v0, 0x2

    const/4 v10, 0x5

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mNewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x5

    :goto_3
    aget-object v0, v8, v9

    if-eqz v0, :cond_6

    const/4 v10, 0x5

    aget-object v0, v8, v9

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v10, 0x2

    :goto_4
    new-instance v0, Lcom/henrythompson/quoda/CodeView$7;

    move-object v1, p0

    move v2, p2

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lcom/henrythompson/quoda/CodeView$7;-><init>(Lcom/henrythompson/quoda/CodeView;IILjava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/CodeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    const/4 v3, 0x4

    const/4 v10, 0x4

    :cond_5
    aget-object v0, v8, v3

    if-eqz v0, :cond_1

    const/4 v10, 0x6

    aget-object v4, v8, v3

    goto :goto_3

    const/4 v4, 0x6

    const/4 v10, 0x6

    :cond_6
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    add-int v5, p2, v0

    goto :goto_4

    const/4 v6, 0x1
.end method

.method public getAutoCompleteEnabled()Z
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->autoCompletionEnabled:Z

    return v0

    const/4 v1, 0x6
.end method

.method public getBottomVisibleLine()I
    .locals 5

    const/4 v4, 0x4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLineHeight()I

    move-result v1

    const/4 v4, 0x6

    if-nez v1, :cond_1

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return v0

    const/4 v0, 0x4

    const/4 v4, 0x4

    :cond_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    div-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v4, 0x4

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x7

    if-gez v0, :cond_2

    const/4 v4, 0x5

    const/4 v0, 0x0

    goto :goto_0

    const/4 v3, 0x4

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLineCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLineCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    const/4 v3, 0x7
.end method

.method public getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    return-object v0

    const/4 v1, 0x7
.end method

.method public getIndentationForCurrentLine()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionLine()I

    move-result v0

    const/4 v2, 0x6

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/CodeView;->getIndentationForLine(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    const/4 v0, 0x1
.end method

.method public getIndentationForLine(I)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x7

    const/4 v5, 0x3

    iget-object v4, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v2

    const/4 v5, 0x4

    if-nez v2, :cond_0

    const/4 v5, 0x5

    const-string v4, ""

    const/4 v5, 0x5

    :goto_0
    return-object v4

    const/4 v3, 0x6

    const/4 v5, 0x4

    :cond_0
    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/LineObject;->getStart()I

    move-result v3

    const/4 v5, 0x4

    move v1, v3

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-ge v1, v4, :cond_1

    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/4 v5, 0x5

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    const/4 v5, 0x3

    :cond_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v3, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    const/4 v3, 0x4

    const/4 v5, 0x4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v2, 0x0
.end method

.method public getIndentationForOffset(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/henrythompson/quoda/document/LinesCollection;->getLineForIndex(I)I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/CodeView;->getIndentationForLine(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    const/4 v1, 0x5
.end method

.method public getSelectedText()Landroid/text/Editable;
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v2

    if-le v1, v2, :cond_0

    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v2

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v3

    const/4 v4, 0x7

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    const/4 v4, 0x5

    :goto_0
    return-object v0

    const/4 v2, 0x1

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v2

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v3

    const/4 v4, 0x7

    invoke-interface {v1, v2, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    goto :goto_0

    const/4 v0, 0x3
.end method

.method public getSelectionLine()I
    .locals 5

    const/4 v4, 0x6

    const/4 v2, -0x1

    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v1

    const/4 v4, 0x5

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v2

    const/4 v4, 0x4

    :cond_0
    return v2

    const/4 v4, 0x7
.end method

.method public getSytnaxHighlightingEnabled()Z
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x4

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->syntaxHighlightingEnabled:Z

    return v0

    const/4 v0, 0x4
.end method

.method public getTopVisibleLine()I
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLineHeight()I

    move-result v1

    const/4 v3, 0x2

    if-nez v1, :cond_1

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v3, 0x5

    :cond_0
    :goto_0
    return v0

    const/4 v3, 0x6

    const/4 v3, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getScrollY()I

    move-result v2

    div-int v0, v2, v1

    const/4 v3, 0x6

    if-gez v0, :cond_2

    const/4 v3, 0x2

    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x2

    const/4 v3, 0x5

    :cond_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLineCount()I

    move-result v2

    if-lt v0, v2, :cond_0

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLineCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    const/4 v3, 0x3
.end method

.method public gotoCurrentWordEnd()V
    .locals 8

    const/4 v7, 0x0

    const/16 v6, 0x5f

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    const/4 v7, 0x2

    :goto_0
    nop

    return-void

    const/4 v6, 0x6

    const/4 v7, 0x5

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v1, v6, :cond_1

    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x6

    :cond_1
    if-eqz v3, :cond_4

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v2

    const/4 v7, 0x4

    :goto_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    const/4 v7, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/4 v7, 0x4

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    if-eq v0, v6, :cond_3

    const/4 v7, 0x6

    :cond_2
    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/CodeView;->setSelection(I)V

    goto :goto_0

    const/4 v4, 0x6

    const/4 v7, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    const/4 v7, 0x0

    const/4 v7, 0x3

    :cond_4
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v2

    const/4 v7, 0x6

    :goto_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_5

    if-ne v0, v6, :cond_6

    const/4 v7, 0x2

    :cond_5
    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/CodeView;->setSelection(I)V

    goto :goto_0

    const/4 v5, 0x1

    const/4 v7, 0x6

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    const/4 v5, 0x4
.end method

.method public gotoCurrentWordStart()V
    .locals 8

    const/4 v7, 0x3

    const/16 v6, 0x5f

    const/4 v7, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v7, 0x5

    :goto_0
    nop

    return-void

    const/4 v2, 0x7

    const/4 v7, 0x1

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/4 v7, 0x6

    const/4 v3, 0x1

    const/4 v7, 0x3

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_1

    if-eq v1, v6, :cond_1

    const/4 v7, 0x6

    const/4 v3, 0x0

    const/4 v7, 0x4

    :cond_1
    if-eqz v3, :cond_4

    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v2

    const/4 v7, 0x6

    :goto_1
    if-ltz v2, :cond_2

    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/4 v7, 0x5

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_3

    if-eq v0, v6, :cond_3

    const/4 v7, 0x1

    :cond_2
    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/CodeView;->setSelection(I)V

    goto :goto_0

    const/4 v2, 0x2

    const/4 v7, 0x2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    const/4 v2, 0x0

    const/4 v7, 0x4

    :cond_4
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v2

    const/4 v7, 0x4

    :goto_2
    if-ltz v2, :cond_5

    const/4 v7, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v4

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v0

    const/4 v7, 0x3

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-nez v4, :cond_5

    if-ne v0, v6, :cond_6

    const/4 v7, 0x2

    :cond_5
    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/CodeView;->setSelection(I)V

    goto :goto_0

    const/4 v3, 0x1

    const/4 v7, 0x4

    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    const/4 v7, 0x5
.end method

.method public gotoLineEnd()V
    .locals 6

    const/4 v5, 0x1

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v1

    const/4 v5, 0x3

    const/4 v2, 0x0

    const/4 v5, 0x5

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getLineCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v5, 0x2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/CodeView;->setSelection(I)V

    const/4 v5, 0x7

    nop

    return-void

    const/4 v2, 0x4

    const/4 v5, 0x1

    :cond_0
    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/document/LinesCollection;->getIndexForLine(I)I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_0

    const/4 v4, 0x4
.end method

.method public gotoLineStart()V
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v1

    const/4 v4, 0x6

    const/4 v2, 0x0

    const/4 v4, 0x5

    if-nez v1, :cond_0

    const/4 v4, 0x5

    const/4 v2, 0x0

    const/4 v4, 0x5

    :goto_0
    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/CodeView;->setSelection(I)V

    const/4 v4, 0x3

    nop

    return-void

    const/4 v1, 0x4

    const/4 v4, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/henrythompson/quoda/document/LinesCollection;->getIndexForLine(I)I

    move-result v2

    goto :goto_0

    const/4 v0, 0x5
.end method

.method public gotoNextFindResult()V
    .locals 7

    const/4 v6, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v6, 0x4

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v2, 0x1

    const/4 v6, 0x6

    :cond_1
    iget v3, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getTopVisibleLine()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    const/4 v6, 0x7

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    const/4 v6, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/FindEngine$FindResult;

    const/4 v6, 0x3

    iget v3, v1, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    if-le v3, v2, :cond_4

    const/4 v6, 0x6

    iput v0, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    const/4 v6, 0x4

    :cond_2
    iget v3, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    if-gez v3, :cond_3

    const/4 v6, 0x5

    iput v5, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    const/4 v6, 0x4

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    iget v4, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/FindEngine$FindResult;

    const/4 v6, 0x7

    iget v3, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/CodeView;->scrollToFindResult(I)V

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->requestFocus()Z

    const/4 v6, 0x1

    iget v3, v1, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    iget v4, v1, Lcom/henrythompson/quoda/FindEngine$FindResult;->end:I

    invoke-virtual {p0, v3, v4}, Lcom/henrythompson/quoda/CodeView;->setSelection(II)V

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->invalidateVisibleArea()V

    goto :goto_0

    const/4 v0, 0x4

    const/4 v6, 0x4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    const/4 v2, 0x0

    const/4 v6, 0x1

    :cond_5
    iget v3, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    iget-object v4, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v3, v4, :cond_6

    const/4 v6, 0x5

    iput v5, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    goto :goto_2

    const/4 v6, 0x3

    const/4 v6, 0x1

    :cond_6
    iget v3, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    goto :goto_2

    const/4 v6, 0x5
.end method

.method public gotoPreviousFindResult()V
    .locals 6

    const/4 v5, 0x5

    const/4 v5, 0x5

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v5, 0x4

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v4, 0x6

    const/4 v5, 0x0

    :cond_1
    iget v3, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    const/4 v5, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getTopVisibleLine()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    const/4 v5, 0x7

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    const/4 v5, 0x3

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/FindEngine$FindResult;

    const/4 v5, 0x7

    iget v3, v1, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    if-le v3, v2, :cond_4

    const/4 v5, 0x1

    iput v0, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    const/4 v5, 0x6

    :cond_2
    iget v3, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    if-gez v3, :cond_3

    const/4 v5, 0x0

    const/4 v3, 0x0

    iput v3, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    const/4 v5, 0x2

    :cond_3
    :goto_2
    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    iget v4, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/henrythompson/quoda/FindEngine$FindResult;

    const/4 v5, 0x7

    iget v3, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/CodeView;->scrollToFindResult(I)V

    const/4 v5, 0x2

    iget v3, v1, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    iget v4, v1, Lcom/henrythompson/quoda/FindEngine$FindResult;->end:I

    invoke-virtual {p0, v3, v4}, Lcom/henrythompson/quoda/CodeView;->setSelection(II)V

    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->invalidateVisibleArea()V

    goto :goto_0

    const/4 v2, 0x2

    const/4 v5, 0x6

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    const/4 v2, 0x3

    const/4 v5, 0x2

    :cond_5
    iget v3, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    if-nez v3, :cond_6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    goto :goto_2

    const/4 v3, 0x4

    const/4 v5, 0x4

    :cond_6
    iget v3, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    goto :goto_2

    const/4 v2, 0x5
.end method

.method public indentSelection()V
    .locals 11

    const/4 v10, 0x2

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    const/4 v10, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v6

    const/4 v10, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v5

    const/4 v10, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v8

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v9

    if-ge v8, v9, :cond_1

    const/4 v10, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v7

    const/4 v10, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v0

    const/4 v10, 0x7

    :goto_0
    move v2, v7

    :goto_1
    if-gt v2, v0, :cond_2

    const/4 v10, 0x6

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/document/Document;->getIndexForStartOfLine(I)I

    move-result v4

    const/4 v10, 0x7

    iget-object v8, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v8}, Lcom/henrythompson/quoda/QuodaPreferences;->getUserSpecifiedTab()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x5

    if-ne v2, v7, :cond_0

    const/4 v10, 0x6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v6, v8

    const/4 v10, 0x4

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v5, v8

    const/4 v10, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8, v4, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v10, 0x6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    const/4 v6, 0x2

    const/4 v10, 0x7

    :cond_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v7

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v0

    goto :goto_0

    const/4 v8, 0x4

    const/4 v10, 0x4

    :cond_2
    invoke-virtual {p0, v6, v5}, Lcom/henrythompson/quoda/CodeView;->setSelection(II)V

    const/4 v10, 0x0

    nop

    return-void

    const/4 v6, 0x1
.end method

.method public invalidateVisibleArea()V
    .locals 7

    const/4 v6, 0x3

    const/4 v6, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingTop()I

    move-result v5

    add-int v3, v4, v5

    const/4 v6, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getHeight()I

    move-result v5

    add-int v0, v4, v5

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingLeft()I

    move-result v1

    const/4 v6, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getWidth()I

    move-result v2

    const/4 v6, 0x7

    invoke-virtual {p0, v1, v3, v2, v0}, Lcom/henrythompson/quoda/CodeView;->invalidate(IIII)V

    const/4 v6, 0x1

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public isCurrentDocumentSaved()Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getIsSaved()Z

    move-result v0

    const/4 v1, 0x7

    :goto_0
    return v0

    const/4 v0, 0x3

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    const/4 v0, 0x5
.end method

.method public isSyntaxHighlighting()Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isSyntaxHighlighting:Z

    return v0

    const/4 v1, 0x5
.end method

.method public onAfterActivityResumed()V
    .locals 6

    const/4 v5, 0x4

    const/4 v5, 0x6

    iget-boolean v3, p0, Lcom/henrythompson/quoda/CodeView;->initializationComplete:Z

    if-nez v3, :cond_0

    const/4 v5, 0x6

    :goto_0
    nop

    return-void

    const/4 v4, 0x3

    const/4 v5, 0x5

    :cond_0
    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v5, 0x6

    if-nez v0, :cond_1

    const/4 v5, 0x2

    const-string v3, "CodeView"

    const-string v4, "DocumentsManager.getDisplayedDocument() returned null even after the Activity resumed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    const/4 v1, 0x0

    const/4 v5, 0x2

    :cond_1
    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentUuid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->refresh()V

    const/4 v5, 0x4

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getSelectionStart()I

    move-result v2

    const/4 v5, 0x7

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getSelectionEnd()I

    move-result v1

    const/4 v5, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-le v2, v3, :cond_5

    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v2

    const/4 v5, 0x3

    :cond_2
    :goto_1
    if-gez v2, :cond_6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    :cond_3
    :goto_2
    invoke-virtual {p0, v2, v1}, Lcom/henrythompson/quoda/CodeView;->setSelection(II)V

    const/4 v5, 0x4

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getScrollX()I

    move-result v3

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getScrollY()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/henrythompson/quoda/CodeView;->scrollTo(II)V

    const/4 v5, 0x3

    :cond_4
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->refreshTheme()V

    goto :goto_0

    const/4 v1, 0x5

    const/4 v5, 0x5

    :cond_5
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-le v1, v3, :cond_2

    const/4 v5, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v1

    goto :goto_1

    const/4 v3, 0x5

    const/4 v5, 0x5

    :cond_6
    if-gez v1, :cond_3

    const/4 v5, 0x5

    const/4 v1, 0x0

    goto :goto_2

    const/4 v0, 0x1
.end method

.method public onDocumentSpansUpdated()V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->updateSyntaxHighlighting()V

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 40

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->isInEditMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v0, 0x7

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v26

    if-eqz v26, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v24

    if-eqz v24, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v2

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v21

    move/from16 v0, v22

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->getIndexForStartOfLine(I)I

    move-result v36

    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/Document;->getIndexForEndOfLine(I)I

    move-result v35

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v39

    move-object/from16 v0, v26

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/henrythompson/quoda/CodeView;->mGutterWidth:I

    move/from16 v28, v0

    move-object/from16 v0, v26

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingTop()I

    move-result v7

    add-int v38, v2, v7

    invoke-virtual/range {v26 .. v26}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v2, v7

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingRight()I

    move-result v7

    add-int v34, v2, v7

    move-object/from16 v0, v26

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingTop()I

    move-result v7

    add-int v19, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mSelectedLinePaint:Landroid/graphics/Paint;

    if-nez v2, :cond_2

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mSelectedLinePaint:Landroid/graphics/Paint;

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mSelectedLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/QuodaPreferences;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v7

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getLineHighlight()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v0, v28

    int-to-float v3, v0

    move/from16 v0, v38

    int-to-float v4, v0

    move/from16 v0, v34

    int-to-float v5, v0

    move/from16 v0, v19

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/henrythompson/quoda/CodeView;->mSelectedLinePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/henrythompson/quoda/CodeView;->mBraceMatchStart:I

    if-ltz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/henrythompson/quoda/CodeView;->mBraceMatchEnd:I

    if-ltz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/henrythompson/quoda/CodeView;->mBraceMatchStart:I

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-ge v2, v7, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/henrythompson/quoda/CodeView;->mBraceMatchEnd:I

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    if-ge v2, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mBracePaint:Landroid/graphics/Paint;

    if-nez v2, :cond_4

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mBracePaint:Landroid/graphics/Paint;

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mBracePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/QuodaPreferences;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v7

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getSelectionColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mBracePaint:Landroid/graphics/Paint;

    const/16 v7, 0x99

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/henrythompson/quoda/CodeView;->mBraceMatchStart:I

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    add-float v3, v2, v7

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/henrythompson/quoda/CodeView;->mBraceMatchStart:I

    invoke-virtual {v7, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingTop()I

    move-result v7

    add-int/2addr v2, v7

    int-to-float v4, v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/henrythompson/quoda/CodeView;->mBraceMatchStart:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    add-float v5, v2, v7

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/henrythompson/quoda/CodeView;->mBraceMatchStart:I

    invoke-virtual {v7, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingTop()I

    move-result v7

    add-int/2addr v2, v7

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/henrythompson/quoda/CodeView;->mBracePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/henrythompson/quoda/CodeView;->mBraceMatchEnd:I

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    add-float v8, v2, v7

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/henrythompson/quoda/CodeView;->mBraceMatchEnd:I

    invoke-virtual {v7, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingTop()I

    move-result v7

    add-int/2addr v2, v7

    int-to-float v9, v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/henrythompson/quoda/CodeView;->mBraceMatchEnd:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    add-float v10, v2, v7

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    move-object/from16 v0, p0

    iget v12, v0, Lcom/henrythompson/quoda/CodeView;->mBraceMatchEnd:I

    invoke-virtual {v7, v12}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingTop()I

    move-result v7

    add-int/2addr v2, v7

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/henrythompson/quoda/CodeView;->mBracePaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    invoke-super/range {p0 .. p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/henrythompson/quoda/CodeView;->mShowLineNumbers:Z

    if-eqz v2, :cond_0

    const/16 v33, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mLineNumberPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_6

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mLineNumberPaint:Landroid/graphics/Paint;

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mLinePaint:Landroid/graphics/Paint;

    if-nez v2, :cond_7

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mLinePaint:Landroid/graphics/Paint;

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mMarkedLineNumberPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_8

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mMarkedLineNumberPaint:Landroid/graphics/Paint;

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mMarkedLineBackgroundPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_9

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mMarkedLineBackgroundPaint:Landroid/graphics/Paint;

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mGutterBackgroundPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_a

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mGutterBackgroundPaint:Landroid/graphics/Paint;

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mLineNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/QuodaPreferences;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v7

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getLineNumberTextColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mLineNumberPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mLineNumberPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/TextPaint;->getTextSize()F

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mLineNumberPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mLineNumberPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mMarkedLineNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/QuodaPreferences;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v7

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getLineNumberBookmarkedTextColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mMarkedLineNumberPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mMarkedLineNumberPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-virtual {v7}, Landroid/text/TextPaint;->getTextSize()F

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mMarkedLineNumberPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mMarkedLineNumberPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mMarkedLineBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/QuodaPreferences;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v7

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getLineNumberBookmarkedBackgroundColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mGutterBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/QuodaPreferences;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v7

    invoke-virtual {v7}, Lcom/henrythompson/quoda/styler/Theme;->getLineNumberBackground()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getScrollX()I

    move-result v2

    int-to-float v13, v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getScrollY()I

    move-result v2

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/henrythompson/quoda/CodeView;->mGutterWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getScrollX()I

    move-result v7

    add-int/2addr v2, v7

    int-to-float v15, v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getScrollY()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getHeight()I

    move-result v7

    add-int/2addr v2, v7

    int-to-float v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/CodeView;->mGutterBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingTop()I

    move-result v32

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getBottomVisibleLine()I

    move-result v30

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v29

    move-object/from16 v0, p0

    iget v2, v0, Lcom/henrythompson/quoda/CodeView;->mGutterWidth:I

    sub-int v2, v2, v29

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getScrollX()I

    move-result v7

    add-int v37, v2, v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v23

    if-eqz v23, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getTopVisibleLine()I

    move-result v25

    const/4 v2, 0x2

    move/from16 v0, v25

    if-lt v0, v2, :cond_c

    add-int/lit8 v25, v25, -0x2

    :goto_1
    move/from16 v0, v25

    move/from16 v1, v30

    if-gt v0, v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v31

    move/from16 v0, v31

    move/from16 v1, v33

    if-eq v0, v1, :cond_b

    invoke-virtual/range {v23 .. v23}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/LineObject;->getIsBookmarked()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    add-int v18, v2, v32

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getScrollX()I

    move-result v2

    int-to-float v13, v2

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    add-int v2, v2, v32

    int-to-float v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/henrythompson/quoda/CodeView;->mGutterWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getScrollX()I

    move-result v7

    add-int/2addr v2, v7

    int-to-float v15, v2

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    add-int v2, v2, v32

    int-to-float v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/CodeView;->mMarkedLineBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, v31, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v37

    int-to-float v7, v0

    move/from16 v0, v18

    int-to-float v12, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/CodeView;->mMarkedLineNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_b
    :goto_2
    move/from16 v33, v31

    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1

    const/4 v1, 0x5

    :cond_c
    const/16 v25, 0x0

    goto/16 :goto_1

    const/4 v8, 0x2

    :cond_d
    add-int/lit8 v2, v31, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v0, v37

    int-to-float v7, v0

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v12

    add-int v12, v12, v32

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/CodeView;->mLineNumberPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7, v12, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    const/4 v6, 0x3

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/henrythompson/quoda/CodeView;->mLineNumberPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mLinePaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/henrythompson/quoda/CodeView;->mLinePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getScrollY()I

    move-result v38

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getHeight()I

    move-result v2

    add-int v19, v38, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/henrythompson/quoda/CodeView;->mGutterWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getScrollX()I

    move-result v7

    add-int/2addr v2, v7

    int-to-float v13, v2

    move/from16 v0, v38

    int-to-float v14, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/henrythompson/quoda/CodeView;->mGutterWidth:I

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getScrollX()I

    move-result v7

    add-int/2addr v2, v7

    int-to-float v15, v2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/henrythompson/quoda/CodeView;->mLinePaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    const/4 v12, 0x2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13

    const/4 v12, 0x2

    const/16 v8, 0x16

    const/16 v11, 0x15

    const/16 v10, 0x14

    const/16 v9, 0x13

    const/4 v6, 0x1

    const/4 v12, 0x5

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v12, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/utils/Utils;->apiSupportsControlKeys()Z

    move-result v1

    const/4 v12, 0x6

    iget-boolean v7, p0, Lcom/henrythompson/quoda/CodeView;->mCtrlPressed:Z

    if-nez v7, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v12, 0x0

    :cond_0
    const/4 v2, 0x1

    const/4 v12, 0x5

    :cond_1
    iget-boolean v7, p0, Lcom/henrythompson/quoda/CodeView;->mShiftPressed:Z

    if-nez v7, :cond_2

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v12, 0x3

    :cond_2
    const/4 v5, 0x1

    const/4 v12, 0x1

    :cond_3
    iget-boolean v7, p0, Lcom/henrythompson/quoda/CodeView;->mAltPressed:Z

    if-nez v7, :cond_4

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v12, 0x2

    :cond_4
    const/4 v0, 0x1

    const/4 v12, 0x1

    :cond_5
    if-nez v2, :cond_6

    if-eqz v0, :cond_e

    const/4 v12, 0x7

    :cond_6
    new-instance p2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    invoke-direct {p2, v7, p1}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v12, 0x2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v7

    int-to-char v3, v7

    const/4 v12, 0x0

    const/16 v7, 0x3d

    if-ne p1, v7, :cond_9

    const/4 v12, 0x4

    const/16 v3, 0x9

    const/4 v12, 0x4

    :cond_7
    :goto_0
    if-nez v3, :cond_d

    const/4 v12, 0x4

    :cond_8
    :goto_1
    return v6

    const/4 v8, 0x3

    const/4 v12, 0x6

    :cond_9
    if-ne p1, v11, :cond_a

    const/4 v12, 0x5

    const/16 v3, 0x2190

    goto :goto_0

    const/4 v10, 0x6

    const/4 v12, 0x7

    :cond_a
    if-ne p1, v8, :cond_b

    const/4 v12, 0x5

    const/16 v3, 0x2192

    goto :goto_0

    const/4 v4, 0x7

    const/4 v12, 0x5

    :cond_b
    if-ne p1, v9, :cond_c

    const/4 v12, 0x2

    const/16 v3, 0x2191

    goto :goto_0

    const/4 v1, 0x0

    const/4 v12, 0x1

    :cond_c
    if-ne p1, v10, :cond_7

    const/4 v12, 0x6

    const/16 v3, 0x2193

    goto :goto_0

    const/4 v1, 0x5

    const/4 v12, 0x6

    :cond_d
    invoke-direct {p0, v2, v5, v0, v3}, Lcom/henrythompson/quoda/CodeView;->handleShortcut(ZZZC)V

    goto :goto_1

    const/4 v12, 0x2

    const/4 v12, 0x1

    :cond_e
    const/16 v7, 0x3d

    if-ne p1, v7, :cond_f

    const/4 v12, 0x6

    const-string v7, "\t"

    invoke-virtual {p0, v7}, Lcom/henrythompson/quoda/CodeView;->replaceSelection(Ljava/lang/String;)V

    goto :goto_1

    const/4 v7, 0x6

    const/4 v12, 0x1

    :cond_f
    iget-object v7, p0, Lcom/henrythompson/quoda/CodeView;->mSuggestionsHandler:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_11

    if-eq p1, v9, :cond_10

    if-eq p1, v10, :cond_10

    const/16 v7, 0x17

    if-eq p1, v7, :cond_10

    const/16 v7, 0x42

    if-ne p1, v7, :cond_11

    const/4 v12, 0x0

    :cond_10
    iget-object v6, p0, Lcom/henrythompson/quoda/CodeView;->mSuggestionsHandler:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-virtual {v6, p1, p2}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_1

    const/4 v9, 0x3

    const/4 v12, 0x7

    :cond_11
    iget-object v7, p0, Lcom/henrythompson/quoda/CodeView;->mSuggestionsHandler:Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/suggestions/SuggestionsHandler;->hidePopup()V

    const/4 v12, 0x5

    if-ne p1, v8, :cond_12

    const/4 v12, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    if-eq v7, v8, :cond_8

    const/4 v12, 0x6

    :cond_12
    if-ne p1, v11, :cond_13

    const/4 v12, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v7

    if-eqz v7, :cond_8

    const/4 v12, 0x6

    :cond_13
    if-ne p1, v9, :cond_14

    const/4 v12, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    const/4 v12, 0x4

    if-eqz v4, :cond_8

    const/4 v12, 0x5

    :cond_14
    if-ne p1, v10, :cond_15

    const/4 v12, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLineCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v4, v7, :cond_8

    const/4 v12, 0x0

    :cond_15
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto/16 :goto_1

    const/4 v0, 0x3
.end method

.method public onScrollChanged(IIII)V
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onScrollChanged(IIII)V

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mScrollChangedListeners:[Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;

    if-eqz v1, :cond_0

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView;->mScrollChangedListeners:[Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    const/4 v4, 0x7

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;->onScrollChanged(IIII)V

    const/4 v4, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v1, 0x2

    const/4 v4, 0x1

    :cond_0
    iget v1, p0, Lcom/henrythompson/quoda/CodeView;->mTopDirtyLine:I

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getTopVisibleLine()I

    move-result v2

    if-gt v1, v2, :cond_1

    iget v1, p0, Lcom/henrythompson/quoda/CodeView;->mBottomDirtyLine:I

    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getBottomVisibleLine()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v4, 0x7

    :cond_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->updateSyntaxHighlighting()V

    const/4 v4, 0x0

    :cond_2
    iget-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->initializationComplete:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    if-nez v1, :cond_3

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/document/Document;->setScrollX(I)V

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/document/Document;->setScrollY(I)V

    const/4 v4, 0x3

    :cond_3
    nop

    return-void

    const/4 v3, 0x1
.end method

.method public onSelectionChanged(II)V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x5

    iget-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->initializationComplete:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x7

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v0, 0x2

    const/4 v2, 0x2

    :cond_1
    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/henrythompson/quoda/document/Document;->setSelection(II)V

    const/4 v2, 0x3

    :cond_2
    invoke-direct {p0}, Lcom/henrythompson/quoda/CodeView;->findBraceMatches()V

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->invalidate()V

    goto :goto_0

    const/4 v2, 0x0
.end method

.method public onSizeChanged(IIII)V
    .locals 7

    const/4 v6, 0x2

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->updateSyntaxHighlighting()V

    const/4 v6, 0x6

    iget-object v4, p0, Lcom/henrythompson/quoda/CodeView;->mScrollChangedListeners:[Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    const/4 v6, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getScrollX()I

    move-result v1

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getScrollY()I

    move-result v2

    const/4 v6, 0x5

    invoke-interface {v0, v1, v2, v1, v2}, Lcom/henrythompson/quoda/CodeView$OnScrollChangedListener;->onScrollChanged(IIII)V

    const/4 v6, 0x4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    const/4 v6, 0x4

    const/4 v6, 0x2

    :cond_0
    nop

    return-void

    const/4 v4, 0x6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v13, 0x7

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v13, 0x5

    packed-switch v9, :pswitch_data_0

    const/4 v13, 0x1

    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v13, 0x4

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    const/4 v10, 0x6

    const/4 v13, 0x2

    :pswitch_0
    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v13, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v13, 0x2

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    const/4 v13, 0x2

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v13, 0x3

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/henrythompson/quoda/CodeView;->mPreviousTouchX:F

    const/4 v13, 0x6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/henrythompson/quoda/CodeView;->mPreviousTouchY:F

    const/4 v13, 0x4

    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    const/4 v11, 0x2

    const/4 v13, 0x4

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_2

    const/4 v6, 0x1

    const/4 v13, 0x0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/henrythompson/quoda/CodeView;->mPreviousTouchY:F

    sub-float v10, v0, v1

    const/4 v13, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v13, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/henrythompson/quoda/CodeView;->mPreviousTouchX:F

    const/4 v13, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/henrythompson/quoda/CodeView;->mPreviousTouchY:F

    const/4 v13, 0x7

    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    const/4 v0, 0x4

    const/4 v13, 0x6

    :pswitch_2
    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/henrythompson/quoda/CodeView;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v13, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v12, v0

    const/4 v13, 0x0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->mWordWrapEnabled:Z

    if-nez v0, :cond_3

    const/4 v13, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v11, v0

    const/4 v13, 0x4

    :goto_3
    iput v3, p0, Lcom/henrythompson/quoda/CodeView;->mPreviousTouchX:F

    const/4 v13, 0x3

    iput v3, p0, Lcom/henrythompson/quoda/CodeView;->mPreviousTouchY:F

    const/4 v13, 0x5

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gez v0, :cond_2

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ltz v0, :cond_6

    const/4 v13, 0x1

    :cond_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v13, 0x4

    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    const/4 v0, 0x5

    const/4 v13, 0x0

    :cond_3
    const/4 v11, 0x0

    goto :goto_3

    const/4 v3, 0x1

    const/4 v13, 0x4

    :cond_4
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingRight()I

    move-result v1

    add-int v6, v0, v1

    const/4 v13, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingBottom()I

    move-result v1

    add-int v8, v0, v1

    const/4 v13, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getScrollY()I

    move-result v2

    neg-int v3, v11

    neg-int v4, v12

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    const/4 v13, 0x5

    :cond_5
    :goto_4
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    const/4 v3, 0x1

    const/4 v13, 0x1

    :cond_6
    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    const/4 v13, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v13, 0x5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_4

    const/4 v0, 0x1

    const/4 v13, 0x3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public paste()V
    .locals 6

    const/4 v5, 0x1

    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboard"

    const/4 v5, 0x4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    const/4 v5, 0x1

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, ""

    if-ne v1, v2, :cond_1

    const/4 v5, 0x1

    :cond_0
    const v1, 0x7f0d00d6

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/CodeView;->showToast(I)V

    const/4 v5, 0x4

    :cond_1
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v2

    if-le v1, v2, :cond_3

    const/4 v5, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v5, 0x2

    :cond_2
    :goto_0
    nop

    return-void

    const/4 v0, 0x3

    const/4 v5, 0x6

    :cond_3
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v3

    const/4 v5, 0x2

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x6

    invoke-interface {v1, v2, v3, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    const/4 v2, 0x4
.end method

.method public redo()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v7, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v3

    const/4 v7, 0x6

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getRedoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/UndoStack;->pop()Lcom/henrythompson/quoda/UndoStack$TextChange;

    move-result-object v0

    const/4 v7, 0x5

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    iget v3, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    if-ltz v3, :cond_1

    const/4 v7, 0x0

    iput-boolean v1, p0, Lcom/henrythompson/quoda/CodeView;->isDoingUndoRedo:Z

    const/4 v7, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v3

    iget v4, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    iget v5, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    iget-object v6, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v7, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v3

    iget v4, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    iget-object v5, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    const/4 v7, 0x6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v7, 0x6

    invoke-static {v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/4 v7, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v3

    const/4 v7, 0x0

    invoke-virtual {v3, v0}, Lcom/henrythompson/quoda/UndoStack;->push(Lcom/henrythompson/quoda/UndoStack$TextChange;)V

    const/4 v7, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mUndoRedoEnabledListener:Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;

    if-eqz v3, :cond_0

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mUndoRedoEnabledListener:Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;

    iget-object v4, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    const/4 v7, 0x5

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v4

    const/4 v7, 0x6

    invoke-virtual {v4}, Lcom/henrythompson/quoda/UndoStack;->canUndo()Z

    move-result v4

    const/4 v7, 0x4

    invoke-interface {v3, v4}, Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;->onUndoEnabledChanged(Z)V

    const/4 v7, 0x6

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mUndoRedoEnabledListener:Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;

    iget-object v4, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    const/4 v7, 0x1

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/Document;->getRedoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v4

    const/4 v7, 0x6

    invoke-virtual {v4}, Lcom/henrythompson/quoda/UndoStack;->canUndo()Z

    move-result v4

    const/4 v7, 0x6

    invoke-interface {v3, v4}, Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;->onRedoEnabledChanged(Z)V

    const/4 v7, 0x4

    :cond_0
    iput-boolean v2, p0, Lcom/henrythompson/quoda/CodeView;->isDoingUndoRedo:Z

    const/4 v7, 0x0

    :goto_0
    return v1

    const/4 v7, 0x4

    const/4 v7, 0x0

    :cond_1
    const v1, 0x7f0d00c7

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/CodeView;->showToast(I)V

    const/4 v7, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/UndoStack;->clear()V

    move v1, v2

    const/4 v7, 0x5

    goto :goto_0

    const/4 v3, 0x3

    :cond_2
    move v1, v2

    const/4 v7, 0x4

    goto :goto_0

    const/4 v4, 0x1
.end method

.method public refresh()V
    .locals 7

    const/4 v6, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    const/4 v6, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v6, 0x0

    if-nez v0, :cond_0

    const/4 v6, 0x5

    :goto_0
    nop

    return-void

    const/4 v1, 0x7

    const/4 v6, 0x1

    :cond_0
    iput v4, p0, Lcom/henrythompson/quoda/CodeView;->mBraceMatchStart:I

    const/4 v6, 0x1

    iput v4, p0, Lcom/henrythompson/quoda/CodeView;->mBraceMatchEnd:I

    const/4 v6, 0x7

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/CodeView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x5

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getSelectionStart()I

    move-result v2

    const/4 v6, 0x4

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getSelectionEnd()I

    move-result v1

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    const/4 v6, 0x6

    invoke-virtual {p0, v2, v1}, Lcom/henrythompson/quoda/CodeView;->setSelection(II)V

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getScrollX()I

    move-result v3

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getScrollY()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/henrythompson/quoda/CodeView;->scrollTo(II)V

    const/4 v6, 0x4

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentUuid:Ljava/lang/String;

    const/4 v6, 0x3

    iput-boolean v5, p0, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    const/4 v6, 0x1

    new-instance v3, Lcom/henrythompson/quoda/CodeView$10;

    invoke-direct {v3, p0, v0}, Lcom/henrythompson/quoda/CodeView$10;-><init>(Lcom/henrythompson/quoda/CodeView;Lcom/henrythompson/quoda/document/Document;)V

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/CodeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    const/4 v2, 0x2

    const/4 v6, 0x6

    :cond_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v6, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/henrythompson/quoda/CodeView;->setSelection(II)V

    goto :goto_1

    const/4 v4, 0x0

    const/4 v6, 0x0

    :cond_2
    invoke-virtual {p0, v5, v5}, Lcom/henrythompson/quoda/CodeView;->setSelection(II)V

    goto :goto_1

    const/4 v2, 0x6
.end method

.method public refreshTheme()V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/styler/Theme;->getCodeViewBackgroundColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/CodeView;->setBackgroundColor(I)V

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/styler/Theme;->getNormalTextStyle()Lcom/henrythompson/quoda/styler/StyleSpan;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/styler/StyleSpan;->getColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/CodeView;->setTextColor(I)V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->getTheme()Lcom/henrythompson/quoda/styler/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/styler/Theme;->getSelectionColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/CodeView;->setHighlightColor(I)V

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->syntaxHighlight()V

    const/4 v2, 0x6

    :goto_0
    nop

    return-void

    const/4 v2, 0x0

    const/4 v2, 0x7

    :cond_0
    const-string v0, "CodeView"

    const-string v1, "getTheme() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    const/4 v2, 0x0
.end method

.method public replaceAllFindResults(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v7, 0x5

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    const/4 v7, 0x3

    :goto_0
    nop

    return-void

    const/4 v3, 0x4

    const/4 v7, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v4

    const/4 v7, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v3

    const/4 v7, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v7, 0x4

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_1
    if-ltz v1, :cond_1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/henrythompson/quoda/FindEngine$FindResult;

    const/4 v7, 0x2

    iget v5, v2, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    iget v6, v2, Lcom/henrythompson/quoda/FindEngine$FindResult;->end:I

    invoke-virtual {v0, v5, v6, p1}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    const/4 v7, 0x0

    const/4 v7, 0x7

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/CodeView;->setText(Ljava/lang/CharSequence;)V

    const/4 v7, 0x3

    new-instance v5, Lcom/henrythompson/quoda/CodeView$11;

    invoke-direct {v5, p0, v4, v3}, Lcom/henrythompson/quoda/CodeView$11;-><init>(Lcom/henrythompson/quoda/CodeView;II)V

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/CodeView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    const/4 v1, 0x1
.end method

.method public replaceFindResult(ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    const/4 v4, 0x5

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v4, 0x0

    const/4 v4, 0x6

    :cond_1
    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    const/4 v4, 0x0

    const-string v1, "CodeView"

    const-string v2, "User tried to replace a find result, but was unable to because resultIndex == -1"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    const/4 v1, 0x1

    const/4 v4, 0x3

    :cond_2
    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/FindEngine$FindResult;

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v1

    iget v2, v0, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    iget v3, v0, Lcom/henrythompson/quoda/FindEngine$FindResult;->end:I

    invoke-interface {v1, v2, v3, p2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v4, 0x2

    iget v1, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    if-lt v1, p1, :cond_3

    const/4 v4, 0x2

    iget v1, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    const/4 v4, 0x0

    :cond_3
    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    const/4 v4, 0x5
.end method

.method public replaceFindResult(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v2, 0x6

    :goto_0
    nop

    return-void

    const/4 v0, 0x2

    const/4 v2, 0x1

    :cond_0
    iget v0, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->gotoNextFindResult()V

    const/4 v2, 0x6

    :cond_1
    iget v0, p0, Lcom/henrythompson/quoda/CodeView;->mSelectedFindResult:I

    invoke-virtual {p0, v0, p1}, Lcom/henrythompson/quoda/CodeView;->replaceFindResult(ILjava/lang/String;)V

    goto :goto_0

    const/4 v2, 0x0
.end method

.method public replaceSelection(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v3, 0x7

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v3, 0x7

    :goto_0
    nop

    return-void

    const/4 v2, 0x1

    const/4 v3, 0x4

    :cond_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    const/4 v3, 0x7
.end method

.method public scrollToFindResult(I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v9, 0x2

    iget-object v6, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    if-ltz p1, :cond_0

    iget-object v6, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt p1, v6, :cond_1

    const/4 v9, 0x3

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v2, 0x7

    const/4 v9, 0x5

    :cond_1
    iget-object v6, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/henrythompson/quoda/FindEngine$FindResult;

    const/4 v9, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getTopVisibleLine()I

    move-result v5

    const/4 v9, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getBottomVisibleLine()I

    move-result v0

    const/4 v9, 0x5

    iget v6, v2, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    if-lt v6, v7, :cond_2

    iget v6, v2, Lcom/henrythompson/quoda/FindEngine$FindResult;->end:I

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    if-le v6, v7, :cond_0

    const/4 v9, 0x4

    :cond_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    iget v8, v2, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    const/4 v9, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6}, Landroid/text/Layout;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingTop()I

    move-result v7

    add-int v1, v6, v7

    const/4 v9, 0x1

    if-le v4, v1, :cond_3

    const/4 v9, 0x3

    move v4, v1

    const/4 v9, 0x4

    :cond_3
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getScrollX()I

    move-result v3

    const/4 v9, 0x5

    iget-boolean v6, p0, Lcom/henrythompson/quoda/CodeView;->mWordWrapEnabled:Z

    if-nez v6, :cond_4

    const/4 v9, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    iget v7, v2, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v6

    float-to-int v3, v6

    const/4 v9, 0x7

    :cond_4
    invoke-virtual {p0, v3, v4}, Lcom/henrythompson/quoda/CodeView;->scrollTo(II)V

    const/4 v9, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->invalidateVisibleArea()V

    goto :goto_0

    const/4 v9, 0x7
.end method

.method public setAutoCompleteEnabled(Z)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x7

    iput-boolean p1, p0, Lcom/henrythompson/quoda/CodeView;->autoCompletionEnabled:Z

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setFindResults(Ljava/util/ArrayList;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/FindEngine$FindResult;",
            ">;Z)V"
        }
    .end annotation

    const/4 v8, 0x7

    const/4 v8, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    const/4 v8, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->updateSyntaxHighlighting()V

    const/4 v8, 0x4

    if-eqz p2, :cond_4

    const/4 v8, 0x6

    iget-object v6, p0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    if-eqz v6, :cond_3

    const/4 v8, 0x7

    const/4 v4, 0x0

    const/4 v8, 0x3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_0

    const/4 v8, 0x6

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/henrythompson/quoda/FindEngine$FindResult;

    const/4 v8, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getTopVisibleLine()I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getBottomVisibleLine()I

    move-result v0

    const/4 v8, 0x3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-eqz v6, :cond_1

    iget v6, v3, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v7

    if-lt v6, v7, :cond_1

    iget v6, v3, Lcom/henrythompson/quoda/FindEngine$FindResult;->end:I

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v7

    if-gt v6, v7, :cond_1

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x6

    :cond_0
    if-nez v4, :cond_3

    const/4 v8, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v1

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x6

    :goto_1
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/henrythompson/quoda/FindEngine$FindResult;

    iget v6, v6, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    if-ge v6, v1, :cond_2

    const/4 v8, 0x5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    const/4 v7, 0x3

    const/4 v8, 0x0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    const/4 v6, 0x6

    const/4 v8, 0x3

    :cond_2
    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/CodeView;->scrollToFindResult(I)V

    const/4 v8, 0x2

    :cond_3
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->invalidateVisibleArea()V

    const/4 v8, 0x2

    :cond_4
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->updateSyntaxHighlighting()V

    const/4 v8, 0x1

    nop

    return-void

    const/4 v7, 0x7
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x6

    invoke-super {p0, p1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    const/4 v1, 0x7

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->mWordWrapEnabled:Z

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x0

    const/4 v1, 0x2

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x1
.end method

.method public setOnShortcutListener(Lcom/henrythompson/quoda/CodeView$ShortcutListener;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/CodeView;->mShortcutListener:Lcom/henrythompson/quoda/CodeView$ShortcutListener;

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public setReadOnly(Z)V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x7

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/CodeView;->setFocusable(Z)V

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/CodeView;->setFocusableInTouchMode(Z)V

    const/4 v3, 0x5

    nop

    return-void

    const/4 v1, 0x0

    :cond_0
    move v0, v2

    const/4 v3, 0x1

    goto :goto_0

    const/4 v0, 0x0

    :cond_1
    move v1, v2

    const/4 v3, 0x2

    goto :goto_1

    const/4 v0, 0x6
.end method

.method public setShowLines(Z)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->mShowLineNumbers:Z

    const/4 v1, 0x2

    iput-boolean p1, p0, Lcom/henrythompson/quoda/CodeView;->mShowLineNumbers:Z

    const/4 v1, 0x6

    if-eq v0, p1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->updateGutter()V

    const/4 v1, 0x4

    :cond_0
    nop

    return-void

    const/4 v0, 0x4
.end method

.method public setUndoRedoEnabledChangedListener(Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/CodeView;->mUndoRedoEnabledListener:Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setWriterMode(Z)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x6

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    nop

    return-void

    const/4 v0, 0x5
.end method

.method public showToast(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v2, 0x2

    nop

    return-void

    const/4 v2, 0x7
.end method

.method public syntaxHighlight()V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/QuodaPreferences;->getSyntaxHighlightingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->cancelSyntaxHighlight()V

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v2, 0x4

    if-eqz v0, :cond_0

    const/4 v2, 0x7

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/language/Language;->runStyler()V

    const/4 v2, 0x5

    :cond_0
    nop

    return-void

    const/4 v2, 0x5
.end method

.method public toggleAlt()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->mAltPressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->mAltPressed:Z

    const/4 v1, 0x7

    nop

    return-void

    const/4 v0, 0x7

    const/4 v1, 0x6

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x6
.end method

.method public toggleCtrl()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->mCtrlPressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->mCtrlPressed:Z

    const/4 v1, 0x2

    nop

    return-void

    const/4 v0, 0x2

    const/4 v1, 0x1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x5
.end method

.method public toggleShift()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->mShiftPressed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->mShiftPressed:Z

    const/4 v1, 0x6

    nop

    return-void

    const/4 v0, 0x2

    const/4 v1, 0x7

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x6
.end method

.method public undo()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v4

    if-eqz v4, :cond_6

    const/4 v7, 0x2

    iget-object v4, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v4

    const/4 v7, 0x7

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/UndoStack;->pop()Lcom/henrythompson/quoda/UndoStack$TextChange;

    move-result-object v1

    const/4 v7, 0x6

    if-eqz v1, :cond_6

    const/4 v7, 0x4

    iget v4, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    if-ltz v4, :cond_5

    const/4 v7, 0x4

    iput-boolean v2, p0, Lcom/henrythompson/quoda/CodeView;->isDoingUndoRedo:Z

    const/4 v7, 0x2

    iget v4, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    if-gez v4, :cond_0

    const/4 v7, 0x5

    iput v3, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    const/4 v7, 0x5

    :cond_0
    iget v4, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->length()I

    move-result v5

    if-le v4, v5, :cond_1

    const/4 v7, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    iput v4, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    const/4 v7, 0x5

    :cond_1
    iget v4, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    iget-object v5, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int v0, v4, v5

    const/4 v7, 0x3

    if-gez v0, :cond_2

    const/4 v7, 0x7

    const/4 v0, 0x0

    const/4 v7, 0x3

    :cond_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    if-le v0, v4, :cond_3

    const/4 v7, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v7, 0x7

    :cond_3
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v4

    iget v5, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    iget-object v6, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-interface {v4, v5, v0, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v7, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v4

    iget v5, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    iget-object v6, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v7, 0x6

    invoke-static {v4, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    const/4 v7, 0x6

    iget-object v4, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v4

    invoke-virtual {v4}, Lcom/henrythompson/quoda/document/Document;->getRedoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v4

    const/4 v7, 0x0

    invoke-virtual {v4, v1}, Lcom/henrythompson/quoda/UndoStack;->push(Lcom/henrythompson/quoda/UndoStack$TextChange;)V

    const/4 v7, 0x6

    iget-object v4, p0, Lcom/henrythompson/quoda/CodeView;->mUndoRedoEnabledListener:Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;

    if-eqz v4, :cond_4

    const/4 v7, 0x4

    iget-object v4, p0, Lcom/henrythompson/quoda/CodeView;->mUndoRedoEnabledListener:Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    const/4 v7, 0x6

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v5}, Lcom/henrythompson/quoda/UndoStack;->canUndo()Z

    move-result v5

    const/4 v7, 0x7

    invoke-interface {v4, v5}, Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;->onUndoEnabledChanged(Z)V

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/henrythompson/quoda/CodeView;->mUndoRedoEnabledListener:Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;

    iget-object v5, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    const/4 v7, 0x4

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v5

    invoke-virtual {v5}, Lcom/henrythompson/quoda/document/Document;->getRedoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v5

    const/4 v7, 0x7

    invoke-virtual {v5}, Lcom/henrythompson/quoda/UndoStack;->canUndo()Z

    move-result v5

    const/4 v7, 0x5

    invoke-interface {v4, v5}, Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;->onRedoEnabledChanged(Z)V

    const/4 v7, 0x6

    :cond_4
    iput-boolean v3, p0, Lcom/henrythompson/quoda/CodeView;->isDoingUndoRedo:Z

    const/4 v7, 0x6

    :goto_0
    return v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    :cond_5
    const v2, 0x7f0d00c7

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/CodeView;->showToast(I)V

    const/4 v7, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/UndoStack;->clear()V

    move v2, v3

    const/4 v7, 0x4

    goto :goto_0

    const/4 v2, 0x0

    :cond_6
    move v2, v3

    const/4 v7, 0x4

    goto :goto_0

    const/4 v2, 0x1
.end method

.method public unindentSelection()V
    .locals 12

    const/4 v11, 0x0

    const/4 v11, 0x2

    iget-object v9, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v2

    const/4 v11, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v9

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v10

    if-ge v9, v10, :cond_2

    const/4 v11, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v8

    const/4 v11, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v0

    const/4 v11, 0x5

    :goto_0
    const/4 v7, 0x3

    const/4 v11, 0x6

    iget-object v9, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/QuodaPreferences;->getUseSpaces()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v11, 0x6

    iget-object v9, p0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/QuodaPreferences;->getSpacesCount()I

    move-result v7

    const/4 v11, 0x3

    :cond_0
    move v4, v8

    :goto_1
    if-gt v4, v0, :cond_4

    const/4 v11, 0x0

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/henrythompson/quoda/document/LineObject;->getStart()I

    move-result v5

    const/4 v11, 0x6

    move v3, v5

    const/4 v11, 0x7

    move v6, v5

    :goto_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->length()I

    move-result v9

    if-ge v6, v9, :cond_1

    add-int v9, v5, v7

    if-gt v3, v9, :cond_1

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v1

    const/4 v11, 0x0

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v11, 0x1

    const/16 v9, 0x9

    if-ne v1, v9, :cond_3

    const/4 v11, 0x2

    add-int/lit8 v3, v3, 0x1

    const/4 v11, 0x3

    :cond_1
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v9, v5, v3, v10}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    const/4 v11, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    const/4 v0, 0x3

    const/4 v11, 0x6

    :cond_2
    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionEnd()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v8

    const/4 v11, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getSelectionStart()I

    move-result v9

    invoke-virtual {v2, v9}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v0

    goto :goto_0

    const/4 v1, 0x5

    const/4 v11, 0x4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    const/4 v11, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    const/4 v1, 0x1

    const/4 v11, 0x6

    :cond_4
    nop

    return-void

    const/4 v8, 0x7
.end method

.method public updateDocumentBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x7

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->initializationComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isSyntaxHighlighting:Z

    if-nez v0, :cond_0

    const/4 v1, 0x6

    iput p2, p0, Lcom/henrythompson/quoda/CodeView;->mOnTextChangedChangeStart:I

    const/4 v1, 0x0

    add-int v0, p2, p3

    iput v0, p0, Lcom/henrythompson/quoda/CodeView;->mOnTextChangedChangeEnd:I

    const/4 v1, 0x1

    :cond_0
    nop

    return-void

    const/4 v1, 0x3
.end method

.method public updateDocumentOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x5

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->initializationComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isSyntaxHighlighting:Z

    if-nez v0, :cond_0

    const/4 v4, 0x6

    add-int v0, p2, p4

    invoke-interface {p1, p2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mOnTextChangedNewText:Ljava/lang/String;

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v4, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    iget v1, p0, Lcom/henrythompson/quoda/CodeView;->mOnTextChangedChangeStart:I

    iget v2, p0, Lcom/henrythompson/quoda/CodeView;->mOnTextChangedChangeEnd:I

    iget-object v3, p0, Lcom/henrythompson/quoda/CodeView;->mOnTextChangedNewText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/henrythompson/quoda/document/Document;->replaceText(IILjava/lang/CharSequence;)V

    const/4 v4, 0x6

    :cond_0
    nop

    return-void

    const/4 v2, 0x3
.end method

.method public updateGutter()V
    .locals 15

    const/16 v13, 0x8

    const/4 v6, 0x3

    iget-boolean v11, p0, Lcom/henrythompson/quoda/CodeView;->mShowLineNumbers:Z

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v11, 0x5

    :cond_1
    iget-object v11, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v11}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v11

    invoke-virtual {v11}, Lcom/henrythompson/quoda/document/Document;->getLineCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    if-eqz v7, :cond_0

    iput v4, p0, Lcom/henrythompson/quoda/CodeView;->mLineNumberDigitCount:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v2, 0x0

    :goto_1
    const/16 v11, 0x9

    if-gt v2, v11, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v10

    cmpl-float v11, v10, v9

    if-lez v11, :cond_2

    move v8, v2

    move v9, v10

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    const/4 v14, 0x3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, p0, Lcom/henrythompson/quoda/CodeView;->mLineNumberDigitCount:I

    if-lt v11, v6, :cond_4

    iget v6, p0, Lcom/henrythompson/quoda/CodeView;->mLineNumberDigitCount:I

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_5

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    const/4 v9, 0x0

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v11

    float-to-int v11, v11

    iput v11, p0, Lcom/henrythompson/quoda/CodeView;->mGutterWidth:I

    iget v11, p0, Lcom/henrythompson/quoda/CodeView;->mGutterWidth:I

    invoke-static {v13}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v12

    add-int/2addr v11, v12

    iput v11, p0, Lcom/henrythompson/quoda/CodeView;->mGutterWidth:I

    invoke-static {v13}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingLeft()I

    move-result v11

    iget v12, p0, Lcom/henrythompson/quoda/CodeView;->mGutterWidth:I

    add-int/2addr v12, v1

    if-eq v11, v12, :cond_0

    iget v11, p0, Lcom/henrythompson/quoda/CodeView;->mGutterWidth:I

    add-int/2addr v11, v1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingTop()I

    move-result v12

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingRight()I

    move-result v13

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingBottom()I

    move-result v14

    invoke-virtual {p0, v11, v12, v13, v14}, Lcom/henrythompson/quoda/CodeView;->setPadding(IIII)V

    goto/16 :goto_0

    const/4 v9, 0x3

    :cond_6
    iget v11, p0, Lcom/henrythompson/quoda/CodeView;->mIdealMargin:I

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingLeft()I

    move-result v12

    if-eq v11, v12, :cond_0

    iget v11, p0, Lcom/henrythompson/quoda/CodeView;->mIdealMargin:I

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingTop()I

    move-result v12

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingRight()I

    move-result v13

    invoke-virtual {p0}, Lcom/henrythompson/quoda/CodeView;->getPaddingBottom()I

    move-result v14

    invoke-virtual {p0, v11, v12, v13, v14}, Lcom/henrythompson/quoda/CodeView;->setPadding(IIII)V

    goto/16 :goto_0

    const/4 v8, 0x2
.end method

.method public updateSyntaxHighlighting()V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->isInEditMode()Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_0
    const-string v13, "CodeView"

    const-string v14, "Failed to update syntax highlighting as getLayout() returned null during updateSyntaxHighlighting()"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    nop

    return-void

    const/4 v9, 0x3

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLineHeight()I

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v13}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v13

    if-nez v13, :cond_3

    const-string v13, "CodeView"

    const-string v14, "Failed to update syntax highlighting as getDisplayedDocument() returned null"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    const/4 v2, 0x3

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v13}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v13

    invoke-virtual {v13}, Lcom/henrythompson/quoda/document/Document;->getSpans()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    const-class v16, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;

    invoke-interface/range {v13 .. v16}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;

    const/4 v4, 0x0

    :goto_1
    array-length v13, v10

    if-ge v4, v13, :cond_4

    aget-object v7, v10, v4

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    const/4 v13, 0x6

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getScrollY()I

    move-result v13

    div-int v11, v13, v5

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getScrollY()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getHeight()I

    move-result v14

    add-int/2addr v13, v14

    div-int/2addr v13, v5

    add-int/lit8 v1, v13, 0x1

    add-int/lit8 v11, v11, -0x1e

    add-int/lit8 v1, v1, 0x1f

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLineCount()I

    move-result v13

    if-lt v11, v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLineCount()I

    move-result v13

    add-int/lit8 v11, v13, -0x1

    :cond_5
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLineCount()I

    move-result v13

    if-lt v1, v13, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLineCount()I

    move-result v13

    add-int/lit8 v1, v13, -0x1

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iput v11, v0, Lcom/henrythompson/quoda/CodeView;->mTopDirtyLine:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/henrythompson/quoda/CodeView;->mBottomDirtyLine:I

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getLayout()Landroid/text/Layout;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    if-eqz v6, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/CodeView;->mPreferencesManager:Lcom/henrythompson/quoda/QuodaPreferences;

    invoke-virtual {v13}, Lcom/henrythompson/quoda/QuodaPreferences;->getSyntaxHighlightingEnabled()Z

    move-result v13

    if-eqz v13, :cond_10

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/henrythompson/quoda/CodeView;->isSyntaxHighlighting:Z

    const/4 v4, 0x0

    :goto_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_f

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;

    iget v13, v7, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->start:I

    if-gez v13, :cond_a

    :cond_7
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    const/4 v8, 0x3

    :cond_8
    if-gez v11, :cond_5

    const/4 v11, 0x0

    goto :goto_2

    const/4 v0, 0x6

    :cond_9
    if-gez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    const/4 v11, 0x2

    :cond_a
    iget v13, v7, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->end:I

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->length()I

    move-result v14

    if-gt v13, v14, :cond_7

    iget v13, v7, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->start:I

    iget v14, v7, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->end:I

    if-gt v13, v14, :cond_7

    iget v13, v7, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->start:I

    if-lt v13, v12, :cond_b

    iget v13, v7, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->start:I

    if-le v13, v2, :cond_c

    :cond_b
    iget v13, v7, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->start:I

    if-gt v13, v2, :cond_7

    iget v13, v7, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->end:I

    if-lt v13, v12, :cond_7

    :cond_c
    iget v13, v7, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->start:I

    if-ge v13, v12, :cond_d

    move v9, v12

    :goto_6
    iget v13, v7, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->end:I

    if-le v13, v2, :cond_e

    move v8, v2

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v13

    const/16 v14, 0x21

    invoke-interface {v13, v7, v9, v8, v14}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    const/4 v13, 0x5

    :cond_d
    iget v9, v7, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->start:I

    goto :goto_6

    const/4 v3, 0x3

    :cond_e
    iget v8, v7, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->end:I

    goto :goto_7

    const/4 v3, 0x3

    :cond_f
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/henrythompson/quoda/CodeView;->isSyntaxHighlighting:Z

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    if-eqz v13, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-interface {v15}, Landroid/text/Editable;->length()I

    move-result v15

    const-class v16, Lcom/henrythompson/quoda/FindEngine$FindResult;

    invoke-interface/range {v13 .. v16}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/henrythompson/quoda/FindEngine$FindResult;

    const/4 v4, 0x0

    :goto_8
    array-length v13, v3

    if-ge v4, v13, :cond_11

    aget-object v7, v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13, v7}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    const/4 v5, 0x1

    :cond_11
    const/4 v4, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v4, v13, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/CodeView;->mFindResults:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/henrythompson/quoda/FindEngine$FindResult;

    iget v13, v7, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    if-gez v13, :cond_13

    :cond_12
    :goto_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    const/4 v6, 0x4

    :cond_13
    iget v13, v7, Lcom/henrythompson/quoda/FindEngine$FindResult;->end:I

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-interface {v14}, Landroid/text/Editable;->length()I

    move-result v14

    if-gt v13, v14, :cond_12

    iget v13, v7, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    iget v14, v7, Lcom/henrythompson/quoda/FindEngine$FindResult;->end:I

    if-gt v13, v14, :cond_12

    iget v13, v7, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    if-lt v13, v12, :cond_14

    iget v13, v7, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    if-le v13, v2, :cond_15

    :cond_14
    iget v13, v7, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    if-gt v13, v2, :cond_12

    iget v13, v7, Lcom/henrythompson/quoda/FindEngine$FindResult;->end:I

    if-lt v13, v12, :cond_12

    :cond_15
    iget v13, v7, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    if-ge v13, v12, :cond_16

    move v9, v12

    :goto_b
    iget v13, v7, Lcom/henrythompson/quoda/FindEngine$FindResult;->end:I

    if-le v13, v2, :cond_17

    move v8, v2

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/CodeView;->getText()Landroid/text/Editable;

    move-result-object v13

    const/16 v14, 0x21

    invoke-interface {v13, v7, v9, v8, v14}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_a

    const/4 v5, 0x4

    :cond_16
    iget v9, v7, Lcom/henrythompson/quoda/FindEngine$FindResult;->start:I

    goto :goto_b

    const/4 v12, 0x6

    :cond_17
    iget v8, v7, Lcom/henrythompson/quoda/FindEngine$FindResult;->end:I

    goto :goto_c

    const/4 v12, 0x3

    :cond_18
    new-instance v13, Lcom/henrythompson/quoda/CodeView$8;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/henrythompson/quoda/CodeView$8;-><init>(Lcom/henrythompson/quoda/CodeView;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/henrythompson/quoda/CodeView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    const/4 v5, 0x5
.end method

.method public updateUndoRedoAfterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mUndoRedoEnabledListener:Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    const/4 v2, 0x6

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mUndoRedoEnabledListener:Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    const/4 v2, 0x7

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/UndoStack;->canUndo()Z

    move-result v1

    const/4 v2, 0x4

    invoke-interface {v0, v1}, Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;->onUndoEnabledChanged(Z)V

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mUndoRedoEnabledListener:Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    const/4 v2, 0x5

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getRedoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/UndoStack;->canUndo()Z

    move-result v1

    const/4 v2, 0x7

    invoke-interface {v0, v1}, Lcom/henrythompson/quoda/CodeView$UndoRedoEnabledListener;->onRedoEnabledChanged(Z)V

    const/4 v2, 0x7

    :cond_0
    nop

    return-void

    const/4 v1, 0x6
.end method

.method public updateUndoRedoBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x4

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->initializationComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isSyntaxHighlighting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isDoingUndoRedo:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x5

    const/4 v2, 0x7

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    const/high16 v0, 0x100000

    if-ge p3, v0, :cond_2

    const/4 v2, 0x0

    new-instance v0, Lcom/henrythompson/quoda/UndoStack$TextChange;

    invoke-direct {v0}, Lcom/henrythompson/quoda/UndoStack$TextChange;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mUpdateUndoRedo_LastChange:Lcom/henrythompson/quoda/UndoStack$TextChange;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mUpdateUndoRedo_LastChange:Lcom/henrythompson/quoda/UndoStack$TextChange;

    add-int v1, p2, p3

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mUpdateUndoRedo_LastChange:Lcom/henrythompson/quoda/UndoStack$TextChange;

    iput p2, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    goto :goto_0

    const/4 v2, 0x3

    const/4 v2, 0x0

    :cond_2
    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/henrythompson/quoda/UndoStack;->removeAll()V

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getRedoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/henrythompson/quoda/UndoStack;->removeAll()V

    const/4 v2, 0x7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mUpdateUndoRedo_LastChange:Lcom/henrythompson/quoda/UndoStack$TextChange;

    goto :goto_0

    const/4 v2, 0x2
.end method

.method public updateUndoRedoOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->initializationComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isSyntaxHighlighting:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isSwitchingDocuments:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/CodeView;->isDoingUndoRedo:Z

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v0, 0x4

    const/4 v2, 0x3

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mUpdateUndoRedo_LastChange:Lcom/henrythompson/quoda/UndoStack$TextChange;

    if-eqz v0, :cond_0

    const/4 v2, 0x5

    const/high16 v0, 0x100000

    if-ge p4, v0, :cond_4

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mUpdateUndoRedo_LastChange:Lcom/henrythompson/quoda/UndoStack$TextChange;

    add-int v1, p2, p4

    const/4 v2, 0x0

    invoke-interface {p1, p2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mUpdateUndoRedo_LastChange:Lcom/henrythompson/quoda/UndoStack$TextChange;

    iget v0, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mUpdateUndoRedo_LastChange:Lcom/henrythompson/quoda/UndoStack$TextChange;

    iget-object v0, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mUpdateUndoRedo_LastChange:Lcom/henrythompson/quoda/UndoStack$TextChange;

    iget-object v0, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mUpdateUndoRedo_LastChange:Lcom/henrythompson/quoda/UndoStack$TextChange;

    iget-object v0, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mUpdateUndoRedo_LastChange:Lcom/henrythompson/quoda/UndoStack$TextChange;

    iget-object v1, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/CodeView;->mUpdateUndoRedo_LastChange:Lcom/henrythompson/quoda/UndoStack$TextChange;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/UndoStack;->push(Lcom/henrythompson/quoda/UndoStack$TextChange;)V

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getRedoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/UndoStack;->removeAll()V

    const/4 v2, 0x6

    :cond_3
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mUpdateUndoRedo_LastChange:Lcom/henrythompson/quoda/UndoStack$TextChange;

    goto :goto_0

    const/4 v2, 0x5

    const/4 v2, 0x4

    :cond_4
    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/UndoStack;->removeAll()V

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/CodeView;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getRedoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0}, Lcom/henrythompson/quoda/UndoStack;->removeAll()V

    goto :goto_1

    const/4 v2, 0x5
.end method

.method public useSytaxHighlightingEnabled(Z)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/henrythompson/quoda/CodeView;->syntaxHighlightingEnabled:Z

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x5
.end method
