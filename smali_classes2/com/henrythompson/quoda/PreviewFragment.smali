.class public Lcom/henrythompson/quoda/PreviewFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Lcom/henrythompson/quoda/DataEventListener;


# static fields
.field private static final SOURCE_BASE_URL:I = 0x1

.field private static final SOURCE_LOCAL:I = 0x0

.field private static final SOURCE_REMOTE:I = 0x2


# instance fields
.field private mCloseButton:Landroid/widget/ImageButton;

.field private mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

.field private mIsLivePreview:Z

.field private mPreviewSource:I

.field private mPreviewUpToDate:Z

.field private mPreviewUpdater:Ljava/lang/Runnable;

.field private mPreviewUpdaterHandler:Landroid/os/Handler;

.field private mPreviewWebBrowser:Landroid/webkit/WebView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mSourceButton:Landroid/widget/ImageButton;

.field private mUrlBar:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v1, 0x6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mIsLivePreview:Z

    const/4 v1, 0x4

    const/4 v0, -0x1

    iput v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewSource:I

    const/4 v1, 0x1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewUpdaterHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    new-instance v0, Lcom/henrythompson/quoda/PreviewFragment$1;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/PreviewFragment$1;-><init>(Lcom/henrythompson/quoda/PreviewFragment;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewUpdater:Ljava/lang/Runnable;

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/PreviewFragment;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/PreviewFragment;->refresh()V

    nop

    return-void

    const/4 v0, 0x6
.end method

.method static synthetic access$100(Lcom/henrythompson/quoda/PreviewFragment;)Landroid/widget/EditText;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mUrlBar:Landroid/widget/EditText;

    return-object v0

    const/4 v0, 0x3
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/PreviewFragment;)Landroid/widget/ProgressBar;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0

    const/4 v0, 0x4
.end method

.method static synthetic access$300(Lcom/henrythompson/quoda/PreviewFragment;I)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x3

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/PreviewFragment;->setSource(I)V

    nop

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$400(Lcom/henrythompson/quoda/PreviewFragment;)Landroid/webkit/WebView;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewWebBrowser:Landroid/webkit/WebView;

    return-object v0

    const/4 v1, 0x2
.end method

.method static synthetic access$500(Lcom/henrythompson/quoda/PreviewFragment;)Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewUpToDate:Z

    return v0

    const/4 v0, 0x3
.end method

.method static synthetic access$502(Lcom/henrythompson/quoda/PreviewFragment;Z)Z
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x2

    iput-boolean p1, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewUpToDate:Z

    return p1

    const/4 v0, 0x1
.end method

.method private getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    return-object v0

    const/4 v1, 0x1
.end method

.method private loadDocument()V
    .locals 9

    const/4 v8, 0x3

    const/4 v8, 0x7

    iget v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewSource:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_7

    const/4 v8, 0x4

    iget v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewSource:I

    if-nez v0, :cond_2

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/PreviewFragment;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getFilePath()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v8, 0x4

    :cond_0
    const-string v7, "/"

    const/4 v8, 0x5

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    :goto_0
    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getText()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getLanguage()Lcom/henrythompson/quoda/language/Language;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/language/Language;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "markdown"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v8, 0x3

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/henrythompson/quoda/PreviewFragment$8;

    invoke-direct {v3, p0, v2, v1}, Lcom/henrythompson/quoda/PreviewFragment$8;-><init>(Lcom/henrythompson/quoda/PreviewFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v8, 0x3

    invoke-virtual {v0}, Ljava/lang/Thread;->run()V

    const/4 v8, 0x1

    :goto_1
    nop

    return-void

    const/4 v5, 0x4

    const/4 v8, 0x4

    :cond_2
    invoke-direct {p0}, Lcom/henrythompson/quoda/PreviewFragment;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/Document;->getBaseURL()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x6

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v8, 0x1

    :cond_3
    const-string v1, "http://"

    goto :goto_0

    const/4 v7, 0x6

    const/4 v8, 0x2

    :cond_4
    const-string v0, "http://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "https://"

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v8, 0x6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    const/4 v0, 0x4

    const/4 v8, 0x5

    :cond_5
    move-object v1, v6

    goto :goto_0

    const/4 v0, 0x3

    const/4 v8, 0x0

    :cond_6
    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewWebBrowser:Landroid/webkit/WebView;

    const-string v3, "text/html"

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    const/4 v7, 0x6

    const/4 v8, 0x2

    :cond_7
    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mUrlBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewWebBrowser:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    const/4 v6, 0x2
.end method

.method private refresh()V
    .locals 5

    const/4 v4, 0x6

    const/4 v4, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/PreviewFragment;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewWebBrowser:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewWebBrowser:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v4, 0x4

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v2, 0x0

    const/4 v4, 0x5

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewWebBrowser:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewWebBrowser:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    const/4 v4, 0x4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewUpToDate:Z

    const/4 v4, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/PreviewFragment;->loadDocument()V

    const/4 v4, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewWebBrowser:Landroid/webkit/WebView;

    new-instance v3, Lcom/henrythompson/quoda/PreviewFragment$9;

    invoke-direct {v3, p0, v0, v1}, Lcom/henrythompson/quoda/PreviewFragment$9;-><init>(Lcom/henrythompson/quoda/PreviewFragment;II)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    goto :goto_0

    const/4 v2, 0x1
.end method

.method private setSource(I)V
    .locals 4

    const/4 v3, 0x1

    const/16 v1, 0xff

    const/16 v2, 0x78

    const/4 v3, 0x3

    iget v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewSource:I

    if-eq v0, p1, :cond_0

    const/4 v3, 0x7

    iput p1, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewSource:I

    const/4 v3, 0x3

    iget v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewSource:I

    if-nez v0, :cond_1

    const/4 v3, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mUrlBar:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mUrlBar:Landroid/widget/EditText;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/PreviewFragment;->refresh()V

    const/4 v3, 0x4

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x5

    const/4 v3, 0x3

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mUrlBar:Landroid/widget/EditText;

    invoke-static {v1, v1, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mUrlBar:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mUrlBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/PreviewFragment;->setBaseUrl(Ljava/lang/String;)V

    goto :goto_0

    const/4 v3, 0x7
.end method

.method private setUrlBarText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\uffff"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :cond_0
    const-string p1, "http://"

    const/4 v2, 0x7

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mUrlBar:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x7

    return-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :cond_2
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    const/4 v0, 0x1
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewWebBrowser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewWebBrowser:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    const/4 v1, 0x6

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    return v0

    const/4 v0, 0x1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x5
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x2

    const v0, 0x7f0a0035

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0

    const/4 v2, 0x3
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x5

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    const/4 v1, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/henrythompson/quoda/DataController;->removeListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v1, 0x0

    nop

    return-void

    const/4 v0, 0x5
.end method

.method public onReceiveCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    return v0

    const/4 v1, 0x7
.end method

.method public onReceiveEvent(I[Ljava/lang/Object;)V
    .locals 5

    const/4 v4, 0x7

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/PreviewFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    const/4 v4, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/PreviewFragment;->loadDocument()V

    const/4 v4, 0x7

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v4, 0x2

    const/4 v4, 0x1

    :cond_1
    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    const/4 v4, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewUpdaterHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v4, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewUpdaterHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewUpdater:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    const/4 v4, 0x2
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/PreviewFragment;->refresh()V

    const/4 v0, 0x4

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x1
.end method

.method public onStart()V
    .locals 7

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    const/4 v6, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/henrythompson/quoda/DataController;->attachListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    instance-of v2, v2, Lcom/henrythompson/quoda/EditorActivity;

    iput-boolean v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mIsLivePreview:Z

    const/4 v6, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v2

    iput-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/henrythompson/quoda/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v5, 0x7f0800c3

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mUrlBar:Landroid/widget/EditText;

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v5, 0x7f0800c1

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mCloseButton:Landroid/widget/ImageButton;

    const/4 v6, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v5, 0x7f0800c2

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mSourceButton:Landroid/widget/ImageButton;

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v5, 0x7f0800c7

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    iput-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewWebBrowser:Landroid/webkit/WebView;

    const/4 v6, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v5, 0x7f0800c5

    invoke-virtual {v2, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v6, 0x7

    iget-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mSourceButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/henrythompson/quoda/PreviewFragment$2;

    invoke-direct {v5, p0}, Lcom/henrythompson/quoda/PreviewFragment$2;-><init>(Lcom/henrythompson/quoda/PreviewFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v6, 0x4

    iget-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mCloseButton:Landroid/widget/ImageButton;

    new-instance v5, Lcom/henrythompson/quoda/PreviewFragment$3;

    invoke-direct {v5, p0}, Lcom/henrythompson/quoda/PreviewFragment$3;-><init>(Lcom/henrythompson/quoda/PreviewFragment;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v6, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/PreviewFragment;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getBaseURL()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\uffff"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    const/4 v6, 0x5

    :goto_0
    invoke-direct {p0}, Lcom/henrythompson/quoda/PreviewFragment;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v2

    invoke-virtual {v2}, Lcom/henrythompson/quoda/document/Document;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/PreviewFragment;->setUrlBarText(Ljava/lang/String;)Ljava/lang/String;

    const/4 v6, 0x5

    if-eqz v1, :cond_1

    const/4 v6, 0x7

    invoke-direct {p0, v3}, Lcom/henrythompson/quoda/PreviewFragment;->setSource(I)V

    const/4 v6, 0x3

    :goto_1
    iget-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mUrlBar:Landroid/widget/EditText;

    new-instance v4, Lcom/henrythompson/quoda/PreviewFragment$4;

    invoke-direct {v4, p0}, Lcom/henrythompson/quoda/PreviewFragment$4;-><init>(Lcom/henrythompson/quoda/PreviewFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const/4 v6, 0x6

    iget-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mUrlBar:Landroid/widget/EditText;

    new-instance v4, Lcom/henrythompson/quoda/PreviewFragment$5;

    invoke-direct {v4, p0}, Lcom/henrythompson/quoda/PreviewFragment$5;-><init>(Lcom/henrythompson/quoda/PreviewFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/4 v6, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewWebBrowser:Landroid/webkit/WebView;

    new-instance v4, Lcom/henrythompson/quoda/PreviewFragment$6;

    invoke-direct {v4, p0}, Lcom/henrythompson/quoda/PreviewFragment$6;-><init>(Lcom/henrythompson/quoda/PreviewFragment;)V

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    const/4 v6, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewWebBrowser:Landroid/webkit/WebView;

    new-instance v4, Lcom/henrythompson/quoda/QuodaWebViewClient;

    invoke-direct {v4}, Lcom/henrythompson/quoda/QuodaWebViewClient;-><init>()V

    invoke-virtual {v2, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    const/4 v6, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewWebBrowser:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const/4 v6, 0x1

    nop

    return-void

    const/4 v2, 0x4

    :cond_0
    move v1, v4

    const/4 v6, 0x2

    goto :goto_0

    const/4 v1, 0x0

    const/4 v6, 0x1

    :cond_1
    invoke-direct {p0, v4}, Lcom/henrythompson/quoda/PreviewFragment;->setSource(I)V

    goto :goto_1

    const/4 v2, 0x3
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x4

    iget v0, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewSource:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v2, 0x5

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/PreviewFragment;->setUrlBarText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/PreviewFragment;->getDisplayedDocument()Lcom/henrythompson/quoda/document/Document;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/document/Document;->setBaseURL(Ljava/lang/String;)V

    const/4 v2, 0x6

    :cond_0
    invoke-direct {p0}, Lcom/henrythompson/quoda/PreviewFragment;->refresh()V

    const/4 v2, 0x6

    nop

    return-void

    const/4 v1, 0x6
.end method

.method public showSourceDropdown()V
    .locals 14

    const/4 v13, 0x6

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v13, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v8, "layout_inflater"

    const/4 v13, 0x5

    invoke-virtual {v5, v8}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const/4 v13, 0x4

    new-instance v4, Landroid/widget/PopupWindow;

    const v5, 0x7f0a0050

    invoke-virtual {v1, v5, v12, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const/16 v8, 0x104

    const/4 v13, 0x0

    invoke-static {v8}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v8

    const/4 v9, -0x2

    invoke-direct {v4, v5, v8, v9, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    const/4 v13, 0x4

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v5

    const v8, 0x7f0800ac

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    const/4 v13, 0x5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x4

    new-instance v8, Lcom/henrythompson/quoda/ListItem;

    const v5, 0x7f0d019a

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/PreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    iget v5, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewSource:I

    if-nez v5, :cond_0

    move v5, v6

    :goto_0
    invoke-direct {v8, v9, v10, v5, v12}, Lcom/henrythompson/quoda/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x6

    new-instance v8, Lcom/henrythompson/quoda/ListItem;

    const v5, 0x7f0d019b

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/PreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    iget v5, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewSource:I

    if-ne v5, v6, :cond_1

    move v5, v6

    :goto_1
    invoke-direct {v8, v9, v10, v5, v12}, Lcom/henrythompson/quoda/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x2

    new-instance v5, Lcom/henrythompson/quoda/ListItem;

    const v8, 0x7f0d019c

    invoke-virtual {p0, v8}, Lcom/henrythompson/quoda/PreviewFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    iget v10, p0, Lcom/henrythompson/quoda/PreviewFragment;->mPreviewSource:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    :goto_2
    invoke-direct {v5, v8, v9, v6, v12}, Lcom/henrythompson/quoda/ListItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    new-instance v0, Lcom/henrythompson/quoda/ListItemAdapter;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/PreviewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0a0051

    invoke-direct {v0, v5, v6, v2}, Lcom/henrythompson/quoda/ListItemAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const/4 v13, 0x2

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 v13, 0x4

    new-instance v5, Lcom/henrythompson/quoda/PreviewFragment$7;

    invoke-direct {v5, p0, v4}, Lcom/henrythompson/quoda/PreviewFragment$7;-><init>(Lcom/henrythompson/quoda/PreviewFragment;Landroid/widget/PopupWindow;)V

    invoke-virtual {v3, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v13, 0x3

    const v5, 0x1030002

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    const/4 v13, 0x6

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v13, 0x7

    iget-object v5, p0, Lcom/henrythompson/quoda/PreviewFragment;->mSourceButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;)V

    const/4 v13, 0x5

    nop

    return-void

    const/4 v12, 0x6

    :cond_0
    move v5, v7

    const/4 v13, 0x0

    goto :goto_0

    const/4 v7, 0x7

    :cond_1
    move v5, v7

    const/4 v13, 0x5

    goto :goto_1

    const/4 v13, 0x3

    :cond_2
    move v6, v7

    const/4 v13, 0x4

    goto :goto_2

    const/4 v13, 0x1
.end method
