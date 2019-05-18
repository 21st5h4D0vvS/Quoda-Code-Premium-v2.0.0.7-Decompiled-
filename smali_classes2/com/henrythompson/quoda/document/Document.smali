.class public Lcom/henrythompson/quoda/document/Document;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FLAG_SET_TEXT_DEFAULT:I = 0x0

.field public static final FLAG_SET_TEXT_DONT_SHIFT_LINES:I = 0x1

.field public static final NO_BASE_URL:Ljava/lang/String; = "\uffff"

.field private static final serialVersionUID:J = -0x4056fa5e36195454L


# instance fields
.field private mBaseURL:Ljava/lang/String;

.field private mContextSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/styler/ContextSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentlyInsertedSnippet:Lcom/henrythompson/quoda/snippet/Tabstop;

.field private mEncoding:Ljava/lang/String;

.field private mFileObject:Lcom/henrythompson/quoda/filesystem/FileObject;

.field private mFrozen:Z

.field private mHasBOM:Z

.field private mInSnippetMode:Z

.field private mIsDisplayed:Z

.field private mIsLoaded:Z

.field private mIsRedoing:Z

.field private mIsSaved:Z

.field private mIsUndoing:Z

.field private mLanguage:Lcom/henrythompson/quoda/language/Language;

.field private mLastModified:J

.field private mLineBreaks:I

.field private mLineNumbers:Lcom/henrythompson/quoda/document/LinesCollection;

.field private mRedoStack:Lcom/henrythompson/quoda/UndoStack;

.field private mSelectedTabIndex:I

.field private mSelectionEnd:I

.field private mSelectionStart:I

.field private mSnippetStart:I

.field private transient mSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsProvider:Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

.field private mTempBookmarkedLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mText:Landroid/text/Editable;

.field private mUUID:Ljava/lang/String;

.field private mUndoStack:Lcom/henrythompson/quoda/UndoStack;

.field private mWordsManager:Lcom/henrythompson/quoda/suggestions/WordsManager;

.field private scrollX:I

.field private scrollY:I


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x7

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mEncoding:Ljava/lang/String;

    const/4 v4, 0x1

    const-string v0, "\uffff"

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mBaseURL:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v0, "0000"

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mUUID:Ljava/lang/String;

    const/4 v4, 0x2

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mHasBOM:Z

    const/4 v4, 0x4

    iput v3, p0, Lcom/henrythompson/quoda/document/Document;->mLineBreaks:I

    const/4 v4, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mLanguage:Lcom/henrythompson/quoda/language/Language;

    const/4 v4, 0x2

    iput v2, p0, Lcom/henrythompson/quoda/document/Document;->mSelectionStart:I

    const/4 v4, 0x6

    iput v2, p0, Lcom/henrythompson/quoda/document/Document;->mSelectionEnd:I

    const/4 v4, 0x7

    iput-boolean v3, p0, Lcom/henrythompson/quoda/document/Document;->mIsSaved:Z

    const/4 v4, 0x0

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    const/4 v4, 0x5

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mIsDisplayed:Z

    const/4 v4, 0x2

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mIsLoaded:Z

    const/4 v4, 0x7

    new-instance v0, Lcom/henrythompson/quoda/UndoStack;

    invoke-direct {v0}, Lcom/henrythompson/quoda/UndoStack;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mUndoStack:Lcom/henrythompson/quoda/UndoStack;

    const/4 v4, 0x4

    new-instance v0, Lcom/henrythompson/quoda/UndoStack;

    invoke-direct {v0}, Lcom/henrythompson/quoda/UndoStack;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mRedoStack:Lcom/henrythompson/quoda/UndoStack;

    const/4 v4, 0x0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/henrythompson/quoda/document/Document;->mLastModified:J

    const/4 v4, 0x4

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mInSnippetMode:Z

    const/4 v4, 0x2

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mIsUndoing:Z

    const/4 v4, 0x5

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mIsRedoing:Z

    const/4 v4, 0x2

    new-instance v0, Lcom/henrythompson/quoda/suggestions/WordsManager;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/suggestions/WordsManager;-><init>(Lcom/henrythompson/quoda/document/Document;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mWordsManager:Lcom/henrythompson/quoda/suggestions/WordsManager;

    const/4 v4, 0x1

    iput v3, p0, Lcom/henrythompson/quoda/document/Document;->mLineBreaks:I

    const/4 v4, 0x0

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mEncoding:Ljava/lang/String;

    const/4 v4, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/language/LanguagesManager;->getInstance()Lcom/henrythompson/quoda/language/LanguagesManager;

    move-result-object v0

    const-string v1, "unknown"

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/language/LanguagesManager;->getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/language/Language;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mLanguage:Lcom/henrythompson/quoda/language/Language;

    const/4 v4, 0x6

    iput-boolean v3, p0, Lcom/henrythompson/quoda/document/Document;->mIsSaved:Z

    const/4 v4, 0x7

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mHasBOM:Z

    const/4 v4, 0x5

    iput v2, p0, Lcom/henrythompson/quoda/document/Document;->mSelectionStart:I

    const/4 v4, 0x6

    new-instance v0, Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-direct {v0}, Lcom/henrythompson/quoda/document/LinesCollection;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mLineNumbers:Lcom/henrythompson/quoda/document/LinesCollection;

    const/4 v4, 0x2

    new-instance v0, Lcom/henrythompson/quoda/filesystem/FileObject;

    const-string v1, "local"

    invoke-direct {v0, v2, v1}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mFileObject:Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mLanguage:Lcom/henrythompson/quoda/language/Language;

    invoke-virtual {v0, p0}, Lcom/henrythompson/quoda/language/Language;->getSuggestionsProvider(Lcom/henrythompson/quoda/document/Document;)Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mSuggestionsProvider:Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

    const/4 v4, 0x0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mUUID:Ljava/lang/String;

    const/4 v4, 0x1

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/henrythompson/quoda/language/Language;Lcom/henrythompson/quoda/filesystem/FileObject;ZI)V
    .locals 4

    const/4 v3, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x7

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mEncoding:Ljava/lang/String;

    const/4 v3, 0x3

    const-string v0, "\uffff"

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mBaseURL:Ljava/lang/String;

    const/4 v3, 0x2

    const-string v0, "0000"

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mUUID:Ljava/lang/String;

    const/4 v3, 0x0

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mHasBOM:Z

    const/4 v3, 0x3

    iput v1, p0, Lcom/henrythompson/quoda/document/Document;->mLineBreaks:I

    const/4 v3, 0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mLanguage:Lcom/henrythompson/quoda/language/Language;

    const/4 v3, 0x4

    iput v2, p0, Lcom/henrythompson/quoda/document/Document;->mSelectionStart:I

    const/4 v3, 0x3

    iput v2, p0, Lcom/henrythompson/quoda/document/Document;->mSelectionEnd:I

    const/4 v3, 0x2

    iput-boolean v1, p0, Lcom/henrythompson/quoda/document/Document;->mIsSaved:Z

    const/4 v3, 0x0

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    const/4 v3, 0x0

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mIsDisplayed:Z

    const/4 v3, 0x3

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mIsLoaded:Z

    const/4 v3, 0x7

    new-instance v0, Lcom/henrythompson/quoda/UndoStack;

    invoke-direct {v0}, Lcom/henrythompson/quoda/UndoStack;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mUndoStack:Lcom/henrythompson/quoda/UndoStack;

    const/4 v3, 0x3

    new-instance v0, Lcom/henrythompson/quoda/UndoStack;

    invoke-direct {v0}, Lcom/henrythompson/quoda/UndoStack;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mRedoStack:Lcom/henrythompson/quoda/UndoStack;

    const/4 v3, 0x6

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/henrythompson/quoda/document/Document;->mLastModified:J

    const/4 v3, 0x4

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mInSnippetMode:Z

    const/4 v3, 0x6

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mIsUndoing:Z

    const/4 v3, 0x5

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mIsRedoing:Z

    const/4 v3, 0x0

    new-instance v0, Lcom/henrythompson/quoda/suggestions/WordsManager;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/suggestions/WordsManager;-><init>(Lcom/henrythompson/quoda/document/Document;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mWordsManager:Lcom/henrythompson/quoda/suggestions/WordsManager;

    const/4 v3, 0x1

    iput p1, p0, Lcom/henrythompson/quoda/document/Document;->mLineBreaks:I

    const/4 v3, 0x3

    iput-object p2, p0, Lcom/henrythompson/quoda/document/Document;->mEncoding:Ljava/lang/String;

    const/4 v3, 0x7

    iput-object p3, p0, Lcom/henrythompson/quoda/document/Document;->mLanguage:Lcom/henrythompson/quoda/language/Language;

    const/4 v3, 0x3

    iput-object p4, p0, Lcom/henrythompson/quoda/document/Document;->mFileObject:Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v3, 0x5

    iput-boolean p5, p0, Lcom/henrythompson/quoda/document/Document;->mHasBOM:Z

    const/4 v3, 0x0

    iput p6, p0, Lcom/henrythompson/quoda/document/Document;->mSelectionStart:I

    const/4 v3, 0x4

    iput p6, p0, Lcom/henrythompson/quoda/document/Document;->mSelectionEnd:I

    const/4 v3, 0x1

    new-instance v0, Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-direct {v0}, Lcom/henrythompson/quoda/document/LinesCollection;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mLineNumbers:Lcom/henrythompson/quoda/document/LinesCollection;

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mLanguage:Lcom/henrythompson/quoda/language/Language;

    invoke-virtual {v0, p0}, Lcom/henrythompson/quoda/language/Language;->getSuggestionsProvider(Lcom/henrythompson/quoda/document/Document;)Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mSuggestionsProvider:Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

    const/4 v3, 0x7

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mUUID:Ljava/lang/String;

    const/4 v3, 0x3

    nop

    return-void

    const/4 v2, 0x1
.end method

.method private getNextTabStopInTabstop(Lcom/henrythompson/quoda/snippet/Tabstop;)Lcom/henrythompson/quoda/snippet/Tabstop;
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x4

    const/4 v0, 0x0

    const/4 v8, 0x5

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Tabstop;->getParts()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const/4 v8, 0x7

    instance-of v5, v1, Lcom/henrythompson/quoda/snippet/Tabstop;

    if-eqz v5, :cond_0

    move-object v2, v1

    const/4 v8, 0x2

    check-cast v2, Lcom/henrythompson/quoda/snippet/Tabstop;

    const/4 v8, 0x2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabIndex()I

    move-result v5

    if-lt v5, v7, :cond_2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabIndex()I

    move-result v5

    iget v6, p0, Lcom/henrythompson/quoda/document/Document;->mSelectedTabIndex:I

    if-le v5, v6, :cond_2

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabIndex()I

    move-result v5

    invoke-virtual {v0}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabIndex()I

    move-result v6

    if-ge v5, v6, :cond_2

    const/4 v8, 0x5

    :cond_1
    move-object v0, v2

    const/4 v8, 0x7

    :cond_2
    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/document/Document;->getNextTabStopInTabstop(Lcom/henrythompson/quoda/snippet/Tabstop;)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v3

    const/4 v8, 0x4

    if-eqz v3, :cond_0

    const/4 v8, 0x4

    if-eqz v0, :cond_3

    const/4 v8, 0x3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabIndex()I

    move-result v5

    invoke-virtual {v0}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabIndex()I

    move-result v6

    if-ge v5, v6, :cond_0

    const/4 v8, 0x0

    move-object v0, v3

    goto :goto_0

    const/4 v2, 0x0

    const/4 v8, 0x0

    :cond_3
    invoke-virtual {v3}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabIndex()I

    move-result v5

    iget v6, p0, Lcom/henrythompson/quoda/document/Document;->mSelectedTabIndex:I

    if-le v5, v6, :cond_0

    invoke-virtual {v3}, Lcom/henrythompson/quoda/snippet/Tabstop;->getTabIndex()I

    move-result v5

    if-lt v5, v7, :cond_0

    const/4 v8, 0x6

    move-object v0, v3

    goto :goto_0

    const/4 v1, 0x7

    const/4 v8, 0x6

    :cond_4
    return-object v0

    const/4 v2, 0x6
.end method


# virtual methods
.method applyTempLineBookmarks()V
    .locals 6

    const/4 v5, 0x0

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/henrythompson/quoda/document/Document;->mTempBookmarkedLines:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    const/4 v5, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/document/Document;->mTempBookmarkedLines:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v5, 0x2

    iget-object v3, p0, Lcom/henrythompson/quoda/document/Document;->mLineNumbers:Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v1

    const/4 v5, 0x6

    if-eqz v1, :cond_0

    const/4 v5, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/henrythompson/quoda/document/LineObject;->setIsBookmarked(Z)V

    goto :goto_0

    const/4 v5, 0x0

    const/4 v5, 0x3

    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/henrythompson/quoda/document/Document;->mTempBookmarkedLines:Ljava/util/ArrayList;

    const/4 v5, 0x7

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public getBaseURL()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getInstance()Lcom/henrythompson/quoda/filesystem/FilesystemsManager;

    move-result-object v1

    iget-object v2, p0, Lcom/henrythompson/quoda/document/Document;->mFileObject:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilesystemUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/filesystem/FilesystemsManager;->getFilesystem(Ljava/lang/String;)Lcom/henrythompson/quoda/filesystem/Filesystem;

    move-result-object v0

    const/4 v3, 0x5

    instance-of v1, v0, Lcom/henrythompson/quoda/filesystem/Server;

    if-eqz v1, :cond_0

    const/4 v3, 0x7

    check-cast v0, Lcom/henrythompson/quoda/filesystem/Server;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/Server;->getBaseURL()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    :goto_0
    return-object v1

    const/4 v2, 0x4

    :cond_0
    iget-object v1, p0, Lcom/henrythompson/quoda/document/Document;->mBaseURL:Ljava/lang/String;

    goto :goto_0

    const/4 v2, 0x7
.end method

.method getBaseURLString()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mBaseURL:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x5
.end method

.method public getContextSpanAt(I)Lcom/henrythompson/quoda/styler/ContextSpan;
    .locals 5

    const/4 v4, 0x3

    const/4 v1, 0x0

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/document/Document;->mContextSpans:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    move-object v0, v1

    const/4 v4, 0x3

    :goto_0
    return-object v0

    const/4 v0, 0x0

    const/4 v4, 0x5

    :cond_0
    iget-object v2, p0, Lcom/henrythompson/quoda/document/Document;->mContextSpans:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/styler/ContextSpan;

    const/4 v4, 0x3

    iget v3, v0, Lcom/henrythompson/quoda/styler/ContextSpan;->start:I

    if-gt v3, p1, :cond_1

    iget v3, v0, Lcom/henrythompson/quoda/styler/ContextSpan;->end:I

    if-lt v3, p1, :cond_1

    goto :goto_0

    const/4 v0, 0x2

    :cond_2
    move-object v0, v1

    const/4 v4, 0x5

    goto :goto_0

    const/4 v1, 0x5
.end method

.method public getContextSpans()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/styler/ContextSpan;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mContextSpans:Ljava/util/ArrayList;

    return-object v0

    const/4 v1, 0x7
.end method

.method public getCurrentlyInsertedSnippet()Lcom/henrythompson/quoda/snippet/Tabstop;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mCurrentlyInsertedSnippet:Lcom/henrythompson/quoda/snippet/Tabstop;

    return-object v0

    const/4 v1, 0x5
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    if-nez v0, :cond_0

    const/4 v2, 0x0

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    const/4 v2, 0x0

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    return-object v0

    const/4 v0, 0x5
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mEncoding:Ljava/lang/String;

    return-object v0

    const/4 v0, 0x4
.end method

.method public getFileName()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mFileObject:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x6
.end method

.method public getFileObject()Lcom/henrythompson/quoda/filesystem/FileObject;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mFileObject:Lcom/henrythompson/quoda/filesystem/FileObject;

    return-object v0

    const/4 v0, 0x6
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mFileObject:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v1, 0x2
.end method

.method public getFilesystem()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mFileObject:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilesystemUuid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v0, 0x6
.end method

.method public getFrozen()Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    return v0

    const/4 v1, 0x4
.end method

.method public getIndexForEndOfLine(I)I
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/Document;->getLineCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v2, 0x3

    :goto_0
    return v0

    const/4 v2, 0x4

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mLineNumbers:Lcom/henrythompson/quoda/document/LinesCollection;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/document/LinesCollection;->getIndexForLine(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    const/4 v2, 0x2
.end method

.method public getIndexForEndOfLine(Lcom/henrythompson/quoda/document/LineObject;)I
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/document/Document;->mLineNumbers:Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-virtual {p1}, Lcom/henrythompson/quoda/document/LineObject;->getStart()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/document/LinesCollection;->getLineForIndex(I)I

    move-result v0

    const/4 v3, 0x2

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/document/Document;->getIndexForEndOfLine(I)I

    move-result v1

    return v1

    const/4 v1, 0x3
.end method

.method public getIndexForStartOfLine(I)I
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mLineNumbers:Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/document/LinesCollection;->getIndexForLine(I)I

    move-result v0

    return v0

    const/4 v1, 0x3
.end method

.method public getIsLoaded()Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mIsLoaded:Z

    return v0

    const/4 v0, 0x5
.end method

.method public getIsSaved()Z
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mIsSaved:Z

    return v0

    const/4 v0, 0x7
.end method

.method public getLanguage()Lcom/henrythompson/quoda/language/Language;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mLanguage:Lcom/henrythompson/quoda/language/Language;

    return-object v0

    const/4 v1, 0x3
.end method

.method public getLastModified()J
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x7

    iget-wide v0, p0, Lcom/henrythompson/quoda/document/Document;->mLastModified:J

    return-wide v0

    const/4 v2, 0x5
.end method

.method public getLineCount()I
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mLineNumbers:Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/LinesCollection;->getLineCount()I

    move-result v0

    return v0

    const/4 v1, 0x3
.end method

.method public getLineForIndex(I)I
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mLineNumbers:Lcom/henrythompson/quoda/document/LinesCollection;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/document/LinesCollection;->getLineForIndex(I)I

    move-result v0

    return v0

    const/4 v0, 0x7
.end method

.method public getLinebreakCode()I
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x3

    iget v0, p0, Lcom/henrythompson/quoda/document/Document;->mLineBreaks:I

    return v0

    const/4 v1, 0x2
.end method

.method public getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mLineNumbers:Lcom/henrythompson/quoda/document/LinesCollection;

    return-object v0

    const/4 v1, 0x3
.end method

.method public getNextTabStop()Lcom/henrythompson/quoda/snippet/Tabstop;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mCurrentlyInsertedSnippet:Lcom/henrythompson/quoda/snippet/Tabstop;

    if-nez v0, :cond_0

    const/4 v1, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    return-object v0

    const/4 v0, 0x7

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mCurrentlyInsertedSnippet:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-direct {p0, v0}, Lcom/henrythompson/quoda/document/Document;->getNextTabStopInTabstop(Lcom/henrythompson/quoda/snippet/Tabstop;)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v0

    goto :goto_0

    const/4 v0, 0x1
.end method

.method public getRedoStack()Lcom/henrythompson/quoda/UndoStack;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mRedoStack:Lcom/henrythompson/quoda/UndoStack;

    return-object v0

    const/4 v0, 0x7
.end method

.method public getScrollX()I
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x7

    iget v0, p0, Lcom/henrythompson/quoda/document/Document;->scrollX:I

    return v0

    const/4 v0, 0x7
.end method

.method public getScrollY()I
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x2

    iget v0, p0, Lcom/henrythompson/quoda/document/Document;->scrollY:I

    return v0

    const/4 v1, 0x2
.end method

.method public getSelectedTabIndex()I
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    iget v0, p0, Lcom/henrythompson/quoda/document/Document;->mSelectedTabIndex:I

    return v0

    const/4 v0, 0x6
.end method

.method public getSelectionEnd()I
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x3

    iget v0, p0, Lcom/henrythompson/quoda/document/Document;->mSelectionEnd:I

    return v0

    const/4 v0, 0x2
.end method

.method public getSelectionStart()I
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x7

    iget v0, p0, Lcom/henrythompson/quoda/document/Document;->mSelectionStart:I

    return v0

    const/4 v0, 0x6
.end method

.method public getSnippetEnd()I
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x1

    iget v0, p0, Lcom/henrythompson/quoda/document/Document;->mSnippetStart:I

    iget-object v1, p0, Lcom/henrythompson/quoda/document/Document;->mCurrentlyInsertedSnippet:Lcom/henrythompson/quoda/snippet/Tabstop;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/snippet/Tabstop;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    const/4 v0, 0x1
.end method

.method public getSnippetStart()I
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x7

    iget v0, p0, Lcom/henrythompson/quoda/document/Document;->mSnippetStart:I

    return v0

    const/4 v1, 0x4
.end method

.method public getSpans()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mSpans:Ljava/util/ArrayList;

    return-object v0

    const/4 v1, 0x5
.end method

.method public getSuggestionsProvider()Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mSuggestionsProvider:Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

    return-object v0

    const/4 v0, 0x4
.end method

.method public getSyntaxHighlightSpanAt(I)Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;
    .locals 5

    const/4 v4, 0x6

    const/4 v1, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/document/Document;->mSpans:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    move-object v0, v1

    const/4 v4, 0x6

    :goto_0
    return-object v0

    const/4 v3, 0x5

    const/4 v4, 0x1

    :cond_0
    iget-object v2, p0, Lcom/henrythompson/quoda/document/Document;->mSpans:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;

    const/4 v4, 0x7

    iget v3, v0, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->start:I

    if-gt v3, p1, :cond_1

    iget v3, v0, Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;->end:I

    if-lt v3, p1, :cond_1

    goto :goto_0

    const/4 v3, 0x2

    :cond_2
    move-object v0, v1

    const/4 v4, 0x6

    goto :goto_0

    const/4 v1, 0x7
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    if-nez v0, :cond_0

    const/4 v2, 0x4

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    const/4 v2, 0x1

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    const/4 v2, 0x5
.end method

.method public getUUID()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mUUID:Ljava/lang/String;

    return-object v0

    const/4 v1, 0x7
.end method

.method public getUndoStack()Lcom/henrythompson/quoda/UndoStack;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mUndoStack:Lcom/henrythompson/quoda/UndoStack;

    return-object v0

    const/4 v1, 0x5
.end method

.method public getWords()Lcom/henrythompson/quoda/suggestions/WordsManager;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mWordsManager:Lcom/henrythompson/quoda/suggestions/WordsManager;

    return-object v0

    const/4 v0, 0x4
.end method

.method public hasBOM()Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mHasBOM:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isDisplayed()Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mIsDisplayed:Z

    return v0

    const/4 v1, 0x1
.end method

.method public isInSnippetMode()Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mInSnippetMode:Z

    return v0

    const/4 v1, 0x2
.end method

.method public redo()V
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/document/Document;->mRedoStack:Lcom/henrythompson/quoda/UndoStack;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/UndoStack;->pop()Lcom/henrythompson/quoda/UndoStack$TextChange;

    move-result-object v1

    const/4 v4, 0x4

    if-eqz v1, :cond_0

    const/4 v4, 0x6

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mIsRedoing:Z

    const/4 v4, 0x2

    iget v2, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    iget-object v3, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    const/4 v4, 0x0

    iget v2, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    iget-object v3, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v3}, Lcom/henrythompson/quoda/document/Document;->replaceText(IILjava/lang/CharSequence;)V

    const/4 v4, 0x6

    iget v2, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    iget-object v3, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/document/Document;->setSelection(I)V

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/document/Document;->mUndoStack:Lcom/henrythompson/quoda/UndoStack;

    invoke-virtual {v2, v1}, Lcom/henrythompson/quoda/UndoStack;->push(Lcom/henrythompson/quoda/UndoStack$TextChange;)V

    const/4 v4, 0x6

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mIsRedoing:Z

    const/4 v4, 0x2

    :cond_0
    nop

    return-void

    const/4 v4, 0x7
.end method

.method public removeSnippet()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mCurrentlyInsertedSnippet:Lcom/henrythompson/quoda/snippet/Tabstop;

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public replaceText(IILjava/lang/CharSequence;)V
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    if-nez v13, :cond_0

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    :cond_0
    if-gez p1, :cond_1

    const/16 p1, 0x0

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    move/from16 v0, p2

    if-lt v0, v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result p2

    :cond_2
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v13

    sub-int v14, p2, p1

    sub-int v8, v13, v14

    invoke-virtual/range {p0 .. p1}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v11

    move/from16 v4, p1

    :goto_0
    move/from16 v0, p2

    if-ge v4, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    invoke-interface {v13, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/document/Document;->mLineNumbers:Lcom/henrythompson/quoda/document/LinesCollection;

    add-int/lit8 v14, v11, 0x1

    invoke-virtual {v13, v14}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/document/Document;->mWordsManager:Lcom/henrythompson/quoda/suggestions/WordsManager;

    invoke-virtual {v13, v5}, Lcom/henrythompson/quoda/suggestions/WordsManager;->deleteLine(Lcom/henrythompson/quoda/document/LineObject;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/document/Document;->mLineNumbers:Lcom/henrythompson/quoda/document/LinesCollection;

    add-int/lit8 v14, v11, 0x1

    invoke-virtual {v13, v14}, Lcom/henrythompson/quoda/document/LinesCollection;->remove(I)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    const/4 v9, 0x5

    :cond_4
    move v9, v8

    invoke-virtual/range {p0 .. p1}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v13

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v13, v14, v9}, Lcom/henrythompson/quoda/document/LinesCollection;->shiftIndexes(II)V

    const/4 v4, 0x0

    :goto_1
    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-ge v4, v13, :cond_6

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    const/16 v14, 0xa

    if-ne v13, v14, :cond_5

    add-int v13, p1, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v13

    add-int/lit8 v14, v5, 0x1

    add-int v15, p1, v4

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/henrythompson/quoda/document/LinesCollection;->add(II)Lcom/henrythompson/quoda/document/LineObject;

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    const/4 v6, 0x6

    :cond_6
    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v13

    const/16 v14, 0xc

    invoke-virtual {v13, v14}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_7

    move/from16 v12, p1

    move/from16 p2, p1

    move/from16 p1, v12

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    move/from16 v0, p1

    if-le v0, v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result p1

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    move/from16 v0, p2

    if-le v0, v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result p2

    :cond_9
    if-gez p1, :cond_a

    const/16 p1, 0x0

    :cond_a
    if-gez p2, :cond_b

    const/16 p2, 0x0

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    move/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-interface {v13, v0, v1, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v13

    const/16 v14, 0xd

    invoke-virtual {v13, v14}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->length()I

    move-result v13

    add-int v13, v13, p1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/henrythompson/quoda/document/Document;->getLineForIndex(I)I

    move-result v3

    move v4, v11

    :goto_2
    if-gt v4, v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/henrythompson/quoda/document/Document;->getLinesCollection()Lcom/henrythompson/quoda/document/LinesCollection;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/henrythompson/quoda/document/LinesCollection;->getLine(I)Lcom/henrythompson/quoda/document/LineObject;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/henrythompson/quoda/document/Document;->getIndexForStartOfLine(I)I

    move-result v7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/henrythompson/quoda/document/Document;->getIndexForEndOfLine(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/henrythompson/quoda/document/Document;->mWordsManager:Lcom/henrythompson/quoda/suggestions/WordsManager;

    invoke-virtual {v13, v5, v7, v6}, Lcom/henrythompson/quoda/suggestions/WordsManager;->processLine(Lcom/henrythompson/quoda/document/LineObject;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    const/4 v7, 0x0

    :cond_c
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/henrythompson/quoda/document/Document;->setIsSaved(Z)V

    :cond_d
    nop

    return-void

    const/4 v9, 0x4
.end method

.method public setBaseURL(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/document/Document;->mBaseURL:Ljava/lang/String;

    const/4 v1, 0x2

    :goto_0
    nop

    return-void

    const/4 v0, 0x5

    const/4 v1, 0x7

    :cond_0
    const-string v0, "\uffff"

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mBaseURL:Ljava/lang/String;

    goto :goto_0

    const/4 v0, 0x3
.end method

.method public setContextSpans(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/styler/ContextSpan;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v1, 0x4

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/document/Document;->mContextSpans:Ljava/util/ArrayList;

    const/4 v1, 0x3

    :cond_0
    nop

    return-void

    const/4 v1, 0x3
.end method

.method public setCurrentlyInsertedSnippet(Lcom/henrythompson/quoda/snippet/Snippet;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    invoke-virtual {p1, p2, p0}, Lcom/henrythompson/quoda/snippet/Snippet;->getParentTabstop(Ljava/lang/String;Lcom/henrythompson/quoda/document/Document;)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p3}, Lcom/henrythompson/quoda/document/Document;->setCurrentlyInsertedSnippet(Lcom/henrythompson/quoda/snippet/Tabstop;II)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setCurrentlyInsertedSnippet(Lcom/henrythompson/quoda/snippet/Snippet;Ljava/lang/String;II)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x6

    invoke-virtual {p1, p2, p0}, Lcom/henrythompson/quoda/snippet/Snippet;->getParentTabstop(Ljava/lang/String;Lcom/henrythompson/quoda/document/Document;)Lcom/henrythompson/quoda/snippet/Tabstop;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lcom/henrythompson/quoda/document/Document;->setCurrentlyInsertedSnippet(Lcom/henrythompson/quoda/snippet/Tabstop;II)V

    const/4 v1, 0x3

    nop

    return-void

    const/4 v1, 0x2
.end method

.method public setCurrentlyInsertedSnippet(Lcom/henrythompson/quoda/snippet/Tabstop;I)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, p2}, Lcom/henrythompson/quoda/document/Document;->setCurrentlyInsertedSnippet(Lcom/henrythompson/quoda/snippet/Tabstop;II)V

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setCurrentlyInsertedSnippet(Lcom/henrythompson/quoda/snippet/Tabstop;II)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_2

    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/Document;->getRedoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/UndoStack;->clear()V

    const/4 v4, 0x6

    new-instance v0, Lcom/henrythompson/quoda/UndoStack$TextChange;

    invoke-direct {v0}, Lcom/henrythompson/quoda/UndoStack$TextChange;-><init>()V

    const/4 v4, 0x6

    iput p2, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    const/4 v4, 0x7

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Tabstop;->getValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    if-eqz v1, :cond_1

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge p2, v1, :cond_0

    iget-object v1, p0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    if-ge p3, v1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    const/4 v4, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    invoke-interface {v1, p2, p3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    const/4 v4, 0x5

    :goto_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/Document;->getUndoStack()Lcom/henrythompson/quoda/UndoStack;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/henrythompson/quoda/UndoStack;->push(Lcom/henrythompson/quoda/UndoStack$TextChange;)V

    const/4 v4, 0x6

    invoke-virtual {p1}, Lcom/henrythompson/quoda/snippet/Tabstop;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, p3, v1}, Lcom/henrythompson/quoda/document/Document;->replaceText(IILjava/lang/CharSequence;)V

    const/4 v4, 0x0

    iput-boolean v3, p0, Lcom/henrythompson/quoda/document/Document;->mInSnippetMode:Z

    const/4 v4, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/document/Document;->mCurrentlyInsertedSnippet:Lcom/henrythompson/quoda/snippet/Tabstop;

    const/4 v4, 0x4

    iput v3, p0, Lcom/henrythompson/quoda/document/Document;->mSelectedTabIndex:I

    const/4 v4, 0x2

    iput p2, p0, Lcom/henrythompson/quoda/document/Document;->mSnippetStart:I

    const/4 v4, 0x7

    :goto_1
    nop

    return-void

    const/4 v3, 0x7

    const/4 v4, 0x0

    :cond_0
    const-string v1, ""

    iput-object v1, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    goto :goto_0

    const/4 v0, 0x1

    const/4 v4, 0x3

    :cond_1
    const-string v1, ""

    iput-object v1, v0, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    goto :goto_0

    const/4 v2, 0x2

    const/4 v4, 0x6

    :cond_2
    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mInSnippetMode:Z

    const/4 v4, 0x6

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/henrythompson/quoda/document/Document;->mCurrentlyInsertedSnippet:Lcom/henrythompson/quoda/snippet/Tabstop;

    const/4 v4, 0x2

    iput v2, p0, Lcom/henrythompson/quoda/document/Document;->mSelectedTabIndex:I

    const/4 v4, 0x7

    iput v2, p0, Lcom/henrythompson/quoda/document/Document;->mSnippetStart:I

    goto :goto_1

    const/4 v1, 0x5
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/document/Document;->mEncoding:Ljava/lang/String;

    const/4 v1, 0x5

    :cond_0
    nop

    return-void

    const/4 v1, 0x4
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x4

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v2, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mFileObject:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->setName(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v2, 0x2

    :cond_0
    nop

    return-void

    const/4 v1, 0x4
.end method

.method public setFileObject(Lcom/henrythompson/quoda/filesystem/FileObject;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x7

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v2, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v2, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/document/Document;->mFileObject:Lcom/henrythompson/quoda/filesystem/FileObject;

    const/4 v2, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v2, 0x1

    :cond_0
    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v2, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mFileObject:Lcom/henrythompson/quoda/filesystem/FileObject;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v2, 0x1

    :cond_0
    nop

    return-void

    const/4 v2, 0x2
.end method

.method public setFrozen(Z)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public setHasBOM(Z)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x7

    iput-boolean p1, p0, Lcom/henrythompson/quoda/document/Document;->mHasBOM:Z

    const/4 v1, 0x7

    :cond_0
    nop

    return-void

    const/4 v1, 0x4
.end method

.method public setIsDisplayed(Z)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x7

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x3

    iput-boolean p1, p0, Lcom/henrythompson/quoda/document/Document;->mIsDisplayed:Z

    const/4 v1, 0x6

    :cond_0
    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setIsInSnippetMode(Z)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x5

    iput-boolean p1, p0, Lcom/henrythompson/quoda/document/Document;->mInSnippetMode:Z

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mInSnippetMode:Z

    if-nez v0, :cond_0

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mCurrentlyInsertedSnippet:Lcom/henrythompson/quoda/snippet/Tabstop;

    const/4 v1, 0x6

    const/4 v0, 0x0

    iput v0, p0, Lcom/henrythompson/quoda/document/Document;->mSelectedTabIndex:I

    const/4 v1, 0x4

    :cond_0
    nop

    return-void

    const/4 v0, 0x5
.end method

.method setIsLoaded(Z)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x4

    iput-boolean p1, p0, Lcom/henrythompson/quoda/document/Document;->mIsLoaded:Z

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/document/Document;->applyTempLineBookmarks()V

    const/4 v1, 0x5

    :cond_0
    nop

    return-void

    const/4 v1, 0x3
.end method

.method public setIsRedoing(Z)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x7

    iput-boolean p1, p0, Lcom/henrythompson/quoda/document/Document;->mIsRedoing:Z

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public setIsSaved(Z)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x4

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v2, 0x7

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mIsSaved:Z

    if-eq p1, v0, :cond_0

    const/4 v2, 0x1

    iput-boolean p1, p0, Lcom/henrythompson/quoda/document/Document;->mIsSaved:Z

    const/4 v2, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v2, 0x7

    :cond_0
    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setIsUndoing(Z)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/henrythompson/quoda/document/Document;->mIsUndoing:Z

    const/4 v0, 0x3

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public setLanguage(Lcom/henrythompson/quoda/language/Language;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/document/Document;->mLanguage:Lcom/henrythompson/quoda/language/Language;

    const/4 v1, 0x1

    invoke-virtual {p1, p0}, Lcom/henrythompson/quoda/language/Language;->getSuggestionsProvider(Lcom/henrythompson/quoda/document/Document;)Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mSuggestionsProvider:Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

    const/4 v1, 0x1

    :cond_0
    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setLastModified(J)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x5

    iput-wide p1, p0, Lcom/henrythompson/quoda/document/Document;->mLastModified:J

    const/4 v1, 0x3

    :cond_0
    nop

    return-void

    const/4 v0, 0x5
.end method

.method setLineBookmarkedBeforeLoaded(I)V
    .locals 3

    const/4 v2, 0x4

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mTempBookmarkedLines:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v2, 0x7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mTempBookmarkedLines:Ljava/util/ArrayList;

    const/4 v2, 0x0

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/document/Document;->mTempBookmarkedLines:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x5

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setLineDelimStyle(I)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x3

    iput p1, p0, Lcom/henrythompson/quoda/document/Document;->mLineBreaks:I

    const/4 v1, 0x7

    :cond_0
    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setLineStartsList(Lcom/henrythompson/quoda/document/LinesCollection;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/document/Document;->mLineNumbers:Lcom/henrythompson/quoda/document/LinesCollection;

    const/4 v1, 0x2

    :cond_0
    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setRedoStack(Lcom/henrythompson/quoda/UndoStack;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/henrythompson/quoda/document/Document;->mRedoStack:Lcom/henrythompson/quoda/UndoStack;

    const/4 v1, 0x0

    :cond_0
    nop

    return-void

    const/4 v1, 0x4
.end method

.method public setScrollX(I)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x5

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x4

    iput p1, p0, Lcom/henrythompson/quoda/document/Document;->scrollX:I

    const/4 v1, 0x1

    :cond_0
    nop

    return-void

    const/4 v1, 0x4
.end method

.method public setScrollY(I)V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x4

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x2

    iput p1, p0, Lcom/henrythompson/quoda/document/Document;->scrollY:I

    const/4 v1, 0x2

    :cond_0
    nop

    return-void

    const/4 v1, 0x3
.end method

.method public setSelectedTabIndex(I)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x4

    iput p1, p0, Lcom/henrythompson/quoda/document/Document;->mSelectedTabIndex:I

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public setSelection(I)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p1}, Lcom/henrythompson/quoda/document/Document;->setSelection(II)V

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public setSelection(II)V
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_1

    const/4 v4, 0x6

    iget v0, p0, Lcom/henrythompson/quoda/document/Document;->mSelectionStart:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/henrythompson/quoda/document/Document;->mSelectionEnd:I

    if-eq v0, p2, :cond_1

    const/4 v4, 0x4

    :cond_0
    iput p1, p0, Lcom/henrythompson/quoda/document/Document;->mSelectionStart:I

    const/4 v4, 0x4

    iput p2, p0, Lcom/henrythompson/quoda/document/Document;->mSelectionEnd:I

    const/4 v4, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/16 v1, 0x19

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/DataController;->sendEvent(I[Ljava/lang/Object;)V

    const/4 v4, 0x7

    :cond_1
    nop

    return-void

    const/4 v0, 0x7
.end method

.method public setSelectionEnd(I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v4, 0x4

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v4, 0x1

    iput p1, p0, Lcom/henrythompson/quoda/document/Document;->mSelectionEnd:I

    const/4 v4, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/16 v1, 0x19

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/DataController;->sendEvent(I[Ljava/lang/Object;)V

    const/4 v4, 0x6

    :cond_0
    nop

    return-void

    const/4 v1, 0x7
.end method

.method public setSelectionStart(I)V
    .locals 5

    const/4 v4, 0x4

    const/4 v4, 0x3

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v4, 0x7

    iput p1, p0, Lcom/henrythompson/quoda/document/Document;->mSelectionStart:I

    const/4 v4, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/16 v1, 0x19

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/DataController;->sendEvent(I[Ljava/lang/Object;)V

    const/4 v4, 0x6

    :cond_0
    nop

    return-void

    const/4 v3, 0x6
.end method

.method public setSnippetStart(I)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x2

    iput p1, p0, Lcom/henrythompson/quoda/document/Document;->mSnippetStart:I

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setSpans(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/henrythompson/quoda/styler/SyntaxHighlightSpan;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x5

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/document/Document;->mSpans:Ljava/util/ArrayList;

    const/4 v1, 0x3

    :cond_0
    nop

    return-void

    const/4 v0, 0x3
.end method

.method public setSuggestionsProvider(Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/document/Document;->mSuggestionsProvider:Lcom/henrythompson/quoda/suggestions/SuggestionsProvider;

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public setText(Landroid/text/Editable;I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x5

    iget-boolean v1, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v1, :cond_0

    const/4 v4, 0x7

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const/4 v4, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v4, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    const/4 v4, 0x1

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/document/Document;->setIsSaved(Z)V

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/document/Document;->mUndoStack:Lcom/henrythompson/quoda/UndoStack;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/UndoStack;->clear()V

    const/4 v4, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/document/Document;->mRedoStack:Lcom/henrythompson/quoda/UndoStack;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/UndoStack;->clear()V

    const/4 v4, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/document/Document;->mWordsManager:Lcom/henrythompson/quoda/suggestions/WordsManager;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/suggestions/WordsManager;->processAllLines()V

    const/4 v4, 0x4

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v0, 0x2

    const/4 v4, 0x2

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x7

    iget-object v1, p0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    if-eqz v1, :cond_2

    const/4 v4, 0x3

    iget-object v1, p0, Lcom/henrythompson/quoda/document/Document;->mText:Landroid/text/Editable;

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v4, 0x1

    :cond_2
    invoke-virtual {p0, v3, v0, p1}, Lcom/henrythompson/quoda/document/Document;->replaceText(IILjava/lang/CharSequence;)V

    goto :goto_0

    const/4 v2, 0x5
.end method

.method public setText(Landroid/text/Editable;Lcom/henrythompson/quoda/document/LinesCollection;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x6

    invoke-virtual {p0, p2}, Lcom/henrythompson/quoda/document/Document;->setLineStartsList(Lcom/henrythompson/quoda/document/LinesCollection;)V

    const/4 v1, 0x5

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/henrythompson/quoda/document/Document;->setText(Landroid/text/Editable;I)V

    const/4 v1, 0x1

    :cond_0
    nop

    return-void

    const/4 v1, 0x0
.end method

.method public setText(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x7

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x7

    if-eqz p1, :cond_1

    const/4 v1, 0x5

    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/henrythompson/quoda/document/Document;->setText(Landroid/text/Editable;I)V

    const/4 v1, 0x1

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x6

    const/4 v1, 0x3

    :cond_1
    const-string v0, ""

    invoke-virtual {p0, v0, p2}, Lcom/henrythompson/quoda/document/Document;->setText(Ljava/lang/String;I)V

    goto :goto_0

    const/4 v1, 0x5
.end method

.method public setText(Ljava/lang/String;Lcom/henrythompson/quoda/document/LinesCollection;)V
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x5

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v2, 0x6

    invoke-virtual {p0, p2}, Lcom/henrythompson/quoda/document/Document;->setLineStartsList(Lcom/henrythompson/quoda/document/LinesCollection;)V

    const/4 v2, 0x4

    new-instance v0, Landroid/text/Editable$Factory;

    invoke-direct {v0}, Landroid/text/Editable$Factory;-><init>()V

    invoke-virtual {v0, p1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/henrythompson/quoda/document/Document;->setText(Landroid/text/Editable;I)V

    const/4 v2, 0x6

    :cond_0
    nop

    return-void

    const/4 v0, 0x6
.end method

.method setUUID(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x6

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/document/Document;->mUUID:Ljava/lang/String;

    const/4 v1, 0x4

    :cond_0
    nop

    return-void

    const/4 v1, 0x5
.end method

.method public setUndoStack(Lcom/henrythompson/quoda/UndoStack;)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/henrythompson/quoda/document/Document;->mFrozen:Z

    if-nez v0, :cond_0

    const/4 v1, 0x7

    iput-object p1, p0, Lcom/henrythompson/quoda/document/Document;->mUndoStack:Lcom/henrythompson/quoda/UndoStack;

    const/4 v1, 0x5

    :cond_0
    nop

    return-void

    const/4 v0, 0x5
.end method

.method public undo()V
    .locals 5

    const/4 v4, 0x4

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/document/Document;->mUndoStack:Lcom/henrythompson/quoda/UndoStack;

    invoke-virtual {v2}, Lcom/henrythompson/quoda/UndoStack;->pop()Lcom/henrythompson/quoda/UndoStack$TextChange;

    move-result-object v1

    const/4 v4, 0x4

    if-eqz v1, :cond_0

    const/4 v4, 0x5

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mIsUndoing:Z

    const/4 v4, 0x0

    iget v2, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    iget-object v3, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->newText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    const/4 v4, 0x7

    iget v2, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    iget-object v3, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {p0, v2, v0, v3}, Lcom/henrythompson/quoda/document/Document;->replaceText(IILjava/lang/CharSequence;)V

    const/4 v4, 0x2

    iget v2, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->start:I

    iget-object v3, v1, Lcom/henrythompson/quoda/UndoStack$TextChange;->oldText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/document/Document;->setSelection(I)V

    const/4 v4, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/document/Document;->mRedoStack:Lcom/henrythompson/quoda/UndoStack;

    invoke-virtual {v2, v1}, Lcom/henrythompson/quoda/UndoStack;->push(Lcom/henrythompson/quoda/UndoStack$TextChange;)V

    const/4 v4, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/henrythompson/quoda/document/Document;->mIsUndoing:Z

    const/4 v4, 0x7

    :cond_0
    nop

    return-void

    const/4 v3, 0x5
.end method
