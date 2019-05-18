.class public Lcom/henrythompson/quoda/EditorActivity;
.super Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;

# interfaces
.implements Lcom/henrythompson/quoda/DataEventListener;


# static fields
.field private static final EDITOR_PANEL_TAG:Ljava/lang/String; = "EditorActivity.EditorPanel"

.field private static final FILEBROWSER_PANEL_TAG:Ljava/lang/String; = "EditorActivity.FileBrowserPanel"

.field private static final PERMISSIONS_REQUEST_CODE:I = 0x70d5a3

.field private static final PREVIEW_PANEL_TAG:Ljava/lang/String; = "EditorActivity.PreviewPanel"

.field public static final REQUEST_CODE_OPEN:I = 0x2

.field public static final REQUEST_CODE_SAVE:I = 0x3

.field public static final REQUEST_CODE_SAVE_AND_CLOSE:I = 0x4

.field public static final REQUEST_CODE_SAVE_AND_PREVIEW:I = 0x5

.field public static final REQUEST_CODE_SNIPPET:I = 0x6


# instance fields
.field private mAdditionalKey1:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

.field private mAdditionalKey10:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

.field private mAdditionalKey2:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

.field private mAdditionalKey3:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

.field private mAdditionalKey4:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

.field private mAdditionalKey5:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

.field private mAdditionalKey6:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

.field private mAdditionalKey7:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

.field private mAdditionalKey8:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

.field private mAdditionalKey9:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

.field private mAdditionalKeyContainer:Landroid/widget/LinearLayout;

.field private mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

.field private mFileBrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

.field private mKeysListener:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;

.field private mPreviewPanel:Lcom/henrythompson/quoda/PreviewFragment;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;-><init>()V

    const/4 v1, 0x7

    new-instance v0, Lcom/henrythompson/quoda/EditorActivity$1;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/EditorActivity$1;-><init>(Lcom/henrythompson/quoda/EditorActivity;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mKeysListener:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;

    nop

    return-void

    const/4 v0, 0x1
.end method

.method static synthetic access$000(Lcom/henrythompson/quoda/EditorActivity;)Lcom/henrythompson/quoda/EditorPanel;
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    return-object v0

    const/4 v1, 0x4
.end method

.method static synthetic access$1000(Lcom/henrythompson/quoda/EditorActivity;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorActivity;->tutorialFileOpenDialog()V

    nop

    return-void

    const/4 v0, 0x2
.end method

.method static synthetic access$101(Lcom/henrythompson/quoda/EditorActivity;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x1

    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;->finish()V

    nop

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$1100(Lcom/henrythompson/quoda/EditorActivity;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorActivity;->finishTutorial()V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static synthetic access$1200(Lcom/henrythompson/quoda/EditorActivity;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorActivity;->doRequestPermissions()V

    nop

    return-void

    const/4 v0, 0x4
.end method

.method static synthetic access$401(Lcom/henrythompson/quoda/EditorActivity;)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x7

    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;->finish()V

    nop

    return-void

    const/4 v0, 0x6
.end method

.method static synthetic access$501(Lcom/henrythompson/quoda/EditorActivity;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x6

    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;->finish()V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static synthetic access$600(Lcom/henrythompson/quoda/EditorActivity;)Landroid/widget/LinearLayout;
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKeyContainer:Landroid/widget/LinearLayout;

    return-object v0

    const/4 v1, 0x1
.end method

.method static synthetic access$700(Lcom/henrythompson/quoda/EditorActivity;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorActivity;->tutorialSpecialKeys()V

    nop

    return-void

    const/4 v0, 0x4
.end method

.method static synthetic access$800(Lcom/henrythompson/quoda/EditorActivity;)Lcom/henrythompson/quoda/FileBrowserPanel;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mFileBrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    return-object v0

    const/4 v0, 0x3
.end method

.method static synthetic access$900(Lcom/henrythompson/quoda/EditorActivity;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorActivity;->tutorialFilesystems()V

    nop

    return-void

    const/4 v0, 0x5
.end method

.method private displayMessageToUser([Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x3

    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const/4 v3, 0x4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x5

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x2

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x1

    const v1, 0x7f0d00c1

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v3, 0x1

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v3, 0x2

    :cond_0
    nop

    return-void

    const/4 v3, 0x6
.end method

.method private doRequestPermissions()V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v3, 0x5

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.INTERNET"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    aput-object v2, v0, v1

    const v1, 0x70d5a3

    invoke-virtual {p0, v0, v1}, Lcom/henrythompson/quoda/EditorActivity;->requestPermissions([Ljava/lang/String;I)V

    const/4 v3, 0x0

    :cond_0
    nop

    return-void

    const/4 v1, 0x0
.end method

.method private finishTutorial()V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x6

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const v1, 0x7f0800a9

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    const/4 v3, 0x0

    nop

    return-void

    const/4 v0, 0x6
.end method

.method private setFragmentWidths(ZZZ)V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0xe6

    const/4 v4, -0x1

    const/4 v6, 0x4

    invoke-static {p0}, Lcom/henrythompson/quoda/utils/Utils;->getScreenWidthPx(Landroid/app/Activity;)I

    move-result v1

    const/4 v6, 0x1

    if-eqz p1, :cond_0

    const/4 v6, 0x0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v5}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v3

    invoke-direct {v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x1

    const v3, 0x7f08012d

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x6

    :cond_0
    if-eqz p2, :cond_3

    const/4 v6, 0x2

    move v2, v1

    const/4 v6, 0x6

    if-eqz p1, :cond_1

    const/4 v6, 0x3

    const/16 v3, 0xe7

    invoke-static {v3}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v6, 0x5

    :cond_1
    if-eqz p3, :cond_2

    const/4 v6, 0x6

    div-int/lit8 v2, v2, 0x2

    const/4 v6, 0x6

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v6, 0x5

    :cond_2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x4

    const v3, 0x7f080118

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x2

    :cond_3
    if-eqz p3, :cond_6

    const/4 v6, 0x5

    move v2, v1

    const/4 v6, 0x3

    if-eqz p1, :cond_4

    const/4 v6, 0x0

    invoke-static {v5}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v6, 0x1

    :cond_4
    if-eqz p2, :cond_5

    const/4 v6, 0x7

    div-int/lit8 v2, v2, 0x2

    const/4 v6, 0x4

    :cond_5
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v6, 0x2

    const v3, 0x7f08012e

    invoke-virtual {p0, v3}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    :cond_6
    nop

    return-void

    const/4 v4, 0x6
.end method

.method private showChangesDialog()V
    .locals 8

    const/4 v7, 0x2

    const/4 v7, 0x5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x7

    const v5, 0x7f0d0074

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x3

    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x3

    :try_start_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "changes.html"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    const/4 v7, 0x6

    invoke-static {v3}, Lcom/henrythompson/quoda/utils/Utils;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    const/4 v7, 0x0

    const-string v5, "text/html"

    const-string v6, "utf-8"

    invoke-virtual {v4, v1, v5, v6}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x6

    const v5, 0x7f0d0064

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x3

    const v5, 0x7f0d0073

    invoke-virtual {p0, v5}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/henrythompson/quoda/EditorActivity$3;

    invoke-direct {v6, p0}, Lcom/henrythompson/quoda/EditorActivity$3;-><init>(Lcom/henrythompson/quoda/EditorActivity;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v7, 0x5

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v7, 0x5

    const/4 v5, 0x1

    sput-boolean v5, Lcom/henrythompson/quoda/QuodaApplication;->IS_UPDATE_INFO_DIALOG_SHOWN:Z

    const/4 v7, 0x6

    :goto_0
    nop

    return-void

    const/4 v1, 0x0

    const/4 v7, 0x6

    :catch_0
    move-exception v2

    const/4 v7, 0x0

    goto :goto_0

    const/4 v2, 0x7
.end method

.method private startTutorial()V
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x1

    const v1, 0x7f0800aa

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x7

    new-instance v1, Lcom/henrythompson/quoda/EditorActivity$8;

    invoke-direct {v1, p0, v0}, Lcom/henrythompson/quoda/EditorActivity$8;-><init>(Lcom/henrythompson/quoda/EditorActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x5

    :goto_0
    nop

    return-void

    const/4 v1, 0x1

    const/4 v2, 0x2

    :catch_0
    move-exception v1

    goto :goto_0

    const/4 v2, 0x0
.end method

.method private tutorialFileOpenDialog()V
    .locals 15

    const-string v13, "layout_inflater"

    invoke-virtual {p0, v13}, Lcom/henrythompson/quoda/EditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v13, 0x7f0800a9

    invoke-virtual {p0, v13}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v13, 0x7f0a0054

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v13, 0x7f0700fb

    invoke-virtual {v5, v13}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v9, Landroid/widget/PopupWindow;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v9, v5, v13, v14}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v13, 0x2

    new-array v1, v13, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v13, 0x30

    invoke-static {v13}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v3

    invoke-virtual {v5, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-virtual {v5, v13, v14}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-static {p0}, Lcom/henrythompson/quoda/utils/Utils;->getScreenWidthPx(Landroid/app/Activity;)I

    move-result v11

    const/4 v13, 0x1

    aget v13, v1, v13

    const/16 v14, 0x30

    invoke-static {v14}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v14

    add-int v12, v13, v14

    const v13, 0x7f080173

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v13, 0x7f080172

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v13, 0x7f080171

    invoke-virtual {v5, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    const-string v14, "fonts/RobotoLight.ttf"

    invoke-static {v13, v14}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v13, 0x7f0d0238

    invoke-virtual {p0, v13}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v13, 0x7f0d023c

    invoke-virtual {p0, v13}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const v13, 0x7f0d0064

    invoke-virtual {p0, v13}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v13, Lcom/henrythompson/quoda/EditorActivity$13;

    invoke-direct {v13, p0, v9}, Lcom/henrythompson/quoda/EditorActivity$13;-><init>(Lcom/henrythompson/quoda/EditorActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v6, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v13, Lcom/henrythompson/quoda/EditorActivity$14;

    invoke-direct {v13, p0, v9}, Lcom/henrythompson/quoda/EditorActivity$14;-><init>(Lcom/henrythompson/quoda/EditorActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v9, v13}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v13, 0x2

    invoke-virtual {v9, v13}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const v13, 0x1020002

    invoke-virtual {p0, v13}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v9, v13, v14, v11, v12}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    nop

    return-void

    const/4 v7, 0x1
.end method

.method private tutorialFilesystems()V
    .locals 15

    const/4 v14, 0x2

    const/4 v13, 0x0

    const/4 v12, -0x2

    const/4 v11, 0x1

    const v9, 0x7f08012c

    invoke-virtual {p0, v9}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v9, "layout_inflater"

    invoke-virtual {p0, v9}, Lcom/henrythompson/quoda/EditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v9, 0x7f0a0054

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, v1, v12, v12}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    new-array v3, v14, [I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v9, v3, v11

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    aput v9, v3, v11

    aget v9, v3, v11

    const/16 v10, 0x8

    invoke-static {v10}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v10

    sub-int/2addr v9, v10

    aput v9, v3, v11

    const v9, 0x7f080173

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x7f080172

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v9, 0x7f080171

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    const-string v10, "fonts/RobotoLight.ttf"

    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v9, 0x7f0d023a

    invoke-virtual {p0, v9}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v9, 0x7f0d023e

    invoke-virtual {p0, v9}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const v9, 0x7f0d012c

    invoke-virtual {p0, v9}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v9, Lcom/henrythompson/quoda/EditorActivity$11;

    invoke-direct {v9, p0, v7}, Lcom/henrythompson/quoda/EditorActivity$11;-><init>(Lcom/henrythompson/quoda/EditorActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v4, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Lcom/henrythompson/quoda/EditorActivity$12;

    invoke-direct {v9, p0, v7}, Lcom/henrythompson/quoda/EditorActivity$12;-><init>(Lcom/henrythompson/quoda/EditorActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    invoke-virtual {v7, v11}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    invoke-virtual {v7, v14}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const v9, 0x1020002

    invoke-virtual {p0, v9}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    aget v10, v3, v13

    aget v11, v3, v11

    invoke-virtual {v7, v9, v13, v10, v11}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method private tutorialSpecialKeys()V
    .locals 15

    const-string v13, "layout_inflater"

    invoke-virtual {p0, v13}, Lcom/henrythompson/quoda/EditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v13, 0x7f0a0054

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v13, 0x7f0700fa

    invoke-virtual {v4, v13}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v8, Landroid/widget/PopupWindow;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v8, v4, v13, v14}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    const/4 v13, 0x2

    new-array v0, v13, [I

    iget-object v13, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKeyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->getLocationOnScreen([I)V

    const/16 v13, 0x30

    invoke-static {v13}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v3

    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-virtual {v4, v13, v14}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget-object v13, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKeyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    div-int/lit8 v14, v10, 0x2

    sub-int v11, v13, v14

    const/4 v13, 0x1

    aget v13, v0, v13

    sub-int/2addr v13, v1

    iget-object v14, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKeyContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v14}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    const/16 v14, 0x8

    invoke-static {v14}, Lcom/henrythompson/quoda/utils/Utils;->dpAsPixels(I)I

    move-result v14

    add-int v12, v13, v14

    const v13, 0x7f080173

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v13, 0x7f080172

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v13, 0x7f080171

    invoke-virtual {v4, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    const-string v14, "fonts/RobotoLight.ttf"

    invoke-static {v13, v14}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v13, 0x7f0d023b

    invoke-virtual {p0, v13}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v13, 0x7f0d023f

    invoke-virtual {p0, v13}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const v13, 0x7f0d0064

    invoke-virtual {p0, v13}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v13, Lcom/henrythompson/quoda/EditorActivity$9;

    invoke-direct {v13, p0, v8}, Lcom/henrythompson/quoda/EditorActivity$9;-><init>(Lcom/henrythompson/quoda/EditorActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v5, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v13, Lcom/henrythompson/quoda/EditorActivity$10;

    invoke-direct {v13, p0, v8}, Lcom/henrythompson/quoda/EditorActivity$10;-><init>(Lcom/henrythompson/quoda/EditorActivity;Landroid/widget/PopupWindow;)V

    invoke-virtual {v8, v13}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    const/4 v13, 0x2

    invoke-virtual {v8, v13}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const v13, 0x1020002

    invoke-virtual {p0, v13}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14, v11, v12}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    nop

    return-void

    const/4 v8, 0x4
.end method

.method private warnNoPermissions()V
    .locals 4

    const/4 v3, 0x3

    const/4 v3, 0x5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d002b

    const/4 v3, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0190

    const/4 v3, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0131

    new-instance v2, Lcom/henrythompson/quoda/EditorActivity$16;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/EditorActivity$16;-><init>(Lcom/henrythompson/quoda/EditorActivity;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d00c1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v3, 0x1

    nop

    return-void

    const/4 v1, 0x0
.end method


# virtual methods
.method public checkIfDatamanagerLoaded()Z
    .locals 3

    const/4 v2, 0x6

    const/4 v2, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/DataController;->isEverythingLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x3

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v2, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x4

    :goto_0
    return v1

    const/4 v1, 0x0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    const/4 v2, 0x3
.end method

.method public configureWorkspace()V
    .locals 12

    const/4 v11, 0x0

    const/4 v11, 0x3

    :try_start_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorActivity;->isUsingTabletLayout()Z

    move-result v7

    if-eqz v7, :cond_10

    const/4 v11, 0x0

    const-string v7, "EditorActivity"

    const-string v8, "configureWorkspace() detects that this device is a tablet"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const/4 v11, 0x6

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    const/4 v11, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v5

    const/4 v11, 0x6

    invoke-virtual {v5}, Lcom/henrythompson/quoda/QuodaPreferences;->getFilebrowserPanelVisible()Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v11, 0x2

    invoke-static {p0}, Lcom/henrythompson/quoda/utils/Utils;->getScreenWidthDp(Landroid/app/Activity;)F

    move-result v7

    const/high16 v8, 0x44480000    # 800.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    invoke-virtual {v5}, Lcom/henrythompson/quoda/QuodaPreferences;->getPreviewPanelVisible()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v11, 0x1

    const v7, 0x7f08012d

    invoke-virtual {p0, v7}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v11, 0x0

    const-string v7, "EditorActivity.FileBrowserPanel"

    invoke-virtual {v3, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    if-eqz v7, :cond_0

    const/4 v11, 0x2

    iget-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mFileBrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-virtual {v4, v7}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v11, 0x1

    :cond_0
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mFileBrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    const/4 v11, 0x7

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v5}, Lcom/henrythompson/quoda/QuodaPreferences;->getPreviewPanelVisible()Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v11, 0x3

    const v7, 0x7f08012e

    invoke-virtual {p0, v7}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v11, 0x7

    const-string v7, "EditorActivity.PreviewPanel"

    invoke-virtual {v3, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    if-nez v7, :cond_2

    const/4 v11, 0x7

    iget-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mPreviewPanel:Lcom/henrythompson/quoda/PreviewFragment;

    if-nez v7, :cond_1

    const/4 v11, 0x2

    new-instance v7, Lcom/henrythompson/quoda/PreviewFragment;

    invoke-direct {v7}, Lcom/henrythompson/quoda/PreviewFragment;-><init>()V

    iput-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mPreviewPanel:Lcom/henrythompson/quoda/PreviewFragment;

    const/4 v11, 0x2

    :cond_1
    const v7, 0x7f08012e

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorActivity;->mPreviewPanel:Lcom/henrythompson/quoda/PreviewFragment;

    const-string v9, "EditorActivity.PreviewPanel"

    invoke-virtual {v4, v7, v8, v9}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v11, 0x1

    :cond_2
    const/4 v6, 0x1

    const/4 v11, 0x3

    :goto_1
    invoke-virtual {v5}, Lcom/henrythompson/quoda/QuodaPreferences;->getCodeEditorVisible()Z

    move-result v7

    if-eqz v7, :cond_e

    const/4 v11, 0x0

    const v7, 0x7f080118

    invoke-virtual {p0, v7}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v11, 0x5

    const-string v7, "EditorActivity.EditorPanel"

    invoke-virtual {v3, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    if-nez v7, :cond_4

    const/4 v11, 0x4

    iget-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    if-nez v7, :cond_3

    const/4 v11, 0x3

    new-instance v7, Lcom/henrythompson/quoda/EditorPanel;

    invoke-direct {v7}, Lcom/henrythompson/quoda/EditorPanel;-><init>()V

    iput-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    const/4 v11, 0x7

    :cond_3
    const v7, 0x7f080118

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    const-string v9, "EditorActivity.EditorPanel"

    invoke-virtual {v4, v7, v8, v9}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v11, 0x6

    :cond_4
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorActivity;->softKeyboardVisible()Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v11, 0x0

    iget-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    if-eqz v7, :cond_5

    const/4 v11, 0x0

    iget-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/EditorPanel;->onSoftKeyboardShown()V

    const/4 v11, 0x7

    :cond_5
    :goto_2
    const/4 v1, 0x1

    const/4 v11, 0x0

    :goto_3
    invoke-direct {p0, v2, v1, v6}, Lcom/henrythompson/quoda/EditorActivity;->setFragmentWidths(ZZZ)V

    const/4 v11, 0x7

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 v11, 0x4

    :goto_4
    nop

    return-void

    const/4 v6, 0x1

    const/4 v11, 0x6

    :cond_6
    const v7, 0x7f08012d

    invoke-virtual {p0, v7}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v11, 0x0

    const-string v7, "EditorActivity.FileBrowserPanel"

    invoke-virtual {v3, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    if-nez v7, :cond_8

    const/4 v11, 0x6

    iget-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mFileBrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    if-nez v7, :cond_7

    const/4 v11, 0x7

    const-string v7, "filebrowserpanel"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/henrythompson/quoda/FileBrowserPanel;->newInstance(Ljava/lang/String;ILjava/lang/String;Z)Lcom/henrythompson/quoda/FileBrowserPanel;

    move-result-object v7

    iput-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mFileBrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    const/4 v11, 0x4

    iget-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mFileBrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    new-instance v8, Lcom/henrythompson/quoda/EditorActivity$7;

    invoke-direct {v8, p0}, Lcom/henrythompson/quoda/EditorActivity$7;-><init>(Lcom/henrythompson/quoda/EditorActivity;)V

    invoke-virtual {v7, v8}, Lcom/henrythompson/quoda/FileBrowserPanel;->setCloseFileBrowserPanelListener(Lcom/henrythompson/quoda/FileBrowserPanel$OnCloseFileBrowserPanelListener;)V

    const/4 v11, 0x3

    :cond_7
    const v7, 0x7f08012d

    iget-object v8, p0, Lcom/henrythompson/quoda/EditorActivity;->mFileBrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    const-string v9, "EditorActivity.FileBrowserPanel"

    invoke-virtual {v4, v7, v8, v9}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v11, 0x7

    :cond_8
    const/4 v2, 0x1

    goto/16 :goto_0

    const/4 v10, 0x7

    const/4 v11, 0x2

    :cond_9
    const v7, 0x7f08012d

    invoke-virtual {p0, v7}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v11, 0x1

    const-string v7, "EditorActivity.FileBrowserPanel"

    invoke-virtual {v3, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    if-eqz v7, :cond_a

    const/4 v11, 0x3

    iget-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mFileBrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-virtual {v4, v7}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v11, 0x4

    :cond_a
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mFileBrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    const/4 v11, 0x3

    const/4 v2, 0x0

    goto/16 :goto_0

    const/4 v1, 0x6

    const/4 v11, 0x4

    :cond_b
    const v7, 0x7f08012e

    invoke-virtual {p0, v7}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v11, 0x4

    const-string v7, "EditorActivity.PreviewPanel"

    invoke-virtual {v3, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    if-eqz v7, :cond_c

    const/4 v11, 0x6

    iget-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mPreviewPanel:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-virtual {v4, v7}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v11, 0x1

    :cond_c
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mPreviewPanel:Lcom/henrythompson/quoda/PreviewFragment;

    const/4 v11, 0x0

    const/4 v6, 0x0

    goto/16 :goto_1

    const/4 v0, 0x4

    const/4 v11, 0x1

    :cond_d
    iget-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    if-eqz v7, :cond_5

    const/4 v11, 0x4

    iget-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v7}, Lcom/henrythompson/quoda/EditorPanel;->onSoftKeyboardHidden()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    const/4 v6, 0x2

    const/4 v11, 0x3

    :catch_0
    move-exception v0

    const/4 v11, 0x6

    const-string v7, "EditorActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception thrown with message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " during configureWorkspace()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x7

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    const/4 v2, 0x5

    const/4 v11, 0x4

    :cond_e
    const v7, 0x7f080118

    :try_start_1
    invoke-virtual {p0, v7}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v11, 0x5

    const-string v7, "EditorActivity.EditorPanel"

    invoke-virtual {v3, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v7

    if-eqz v7, :cond_f

    const/4 v11, 0x3

    iget-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v4, v7}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    const/4 v11, 0x4

    :cond_f
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    const/4 v11, 0x6

    const/4 v1, 0x0

    goto/16 :goto_3

    const/4 v5, 0x7

    const/4 v11, 0x7

    :cond_10
    const-string v7, "EditorActivity"

    const-string v8, "configureWorkspace() detects that this device is not a tablet"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v7

    const v8, 0x7f08011d

    invoke-virtual {v7, v8}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/henrythompson/quoda/EditorPanel;

    iput-object v7, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    const/4 v0, 0x1
.end method

.method public finish()V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->askForSaveOnExit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorActivity;->showSaveModifiedFilesBeforeExitDialog()V

    const/4 v1, 0x7

    :goto_0
    nop

    return-void

    const/4 v0, 0x5

    const/4 v1, 0x7

    :cond_0
    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;->finish()V

    goto :goto_0

    const/4 v0, 0x3
.end method

.method public isUsingTabletLayout()Z
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x4

    :goto_0
    return v0

    const/4 v0, 0x5

    const/4 v2, 0x7

    :cond_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorActivity;->checkIfDatamanagerLoaded()Z

    const/4 v2, 0x5

    const/4 v0, 0x0

    goto :goto_0

    const/4 v0, 0x3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mFileBrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mFileBrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/henrythompson/quoda/FileBrowserPanel;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x6

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/henrythompson/quoda/EditorPanel;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x5

    :cond_1
    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mPreviewPanel:Lcom/henrythompson/quoda/PreviewFragment;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mPreviewPanel:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/henrythompson/quoda/PreviewFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v1, 0x3

    :cond_2
    nop

    return-void

    const/4 v0, 0x5
.end method

.method public onAdditionalKeyClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x5

    const/4 v3, 0x4

    move-object v0, p1

    check-cast v0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v3, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->getSymbol(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/EditorPanel;->onAdditionalKeyClick(Ljava/lang/CharSequence;)V

    const/4 v3, 0x7

    nop

    return-void

    const/4 v3, 0x4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v9, 0x7

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v9, 0x2

    invoke-super {p0, p1}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v9, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/henrythompson/quoda/DataController;->attachListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v9, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorActivity;->checkIfDatamanagerLoaded()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v9, 0x3

    const-string v0, "EditorActivity"

    const-string v1, "Data manager not loaded in onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x3

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v8, 0x5

    const/4 v9, 0x6

    :cond_1
    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    const/4 v9, 0x7

    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorActivity;->setContentView(I)V

    const/4 v9, 0x5

    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKeyContainer:Landroid/widget/LinearLayout;

    const/4 v9, 0x6

    const v0, 0x7f08003b

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey1:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v9, 0x6

    const v0, 0x7f08003d

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey2:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v9, 0x1

    const v0, 0x7f08003e

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey3:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v9, 0x0

    const v0, 0x7f08003f

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey4:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v9, 0x3

    const v0, 0x7f080040

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey5:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v9, 0x1

    const v0, 0x7f080041

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey6:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v9, 0x3

    const v0, 0x7f080042

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey7:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v9, 0x3

    const v0, 0x7f080043

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey8:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v9, 0x3

    const v0, 0x7f080044

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey9:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v9, 0x1

    const v0, 0x7f08003c

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey10:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v9, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey1:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u21e5"

    aput-object v2, v1, v5

    const-string v2, "\u2388"

    aput-object v2, v1, v4

    const-string v2, "\u2326"

    aput-object v2, v1, v6

    const-string v2, "\u2387"

    aput-object v2, v1, v7

    const-string v2, "\u21e7"

    aput-object v2, v1, v8

    invoke-virtual {v0, v5, v1}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setup(I[Ljava/lang/String;)V

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey2:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/16 v1, 0x8

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v5

    const-string v3, "1"

    aput-object v3, v2, v4

    const-string v3, "2"

    aput-object v3, v2, v6

    const-string v3, "3"

    aput-object v3, v2, v7

    const-string v3, "4"

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setup(I[Ljava/lang/String;)V

    const/4 v9, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey3:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/16 v1, 0x9

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "5"

    aput-object v3, v2, v5

    const-string v3, "6"

    aput-object v3, v2, v4

    const-string v3, "7"

    aput-object v3, v2, v6

    const-string v3, "8"

    aput-object v3, v2, v7

    const-string v3, "9"

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setup(I[Ljava/lang/String;)V

    const/4 v9, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey4:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\""

    aput-object v2, v1, v5

    const-string v2, "["

    aput-object v2, v1, v4

    const-string v2, "]"

    aput-object v2, v1, v6

    const-string v2, "("

    aput-object v2, v1, v7

    const-string v2, ")"

    aput-object v2, v1, v8

    invoke-virtual {v0, v4, v1}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setup(I[Ljava/lang/String;)V

    const/4 v9, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey5:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\'"

    aput-object v2, v1, v5

    const-string v2, "<"

    aput-object v2, v1, v4

    const-string v2, ">"

    aput-object v2, v1, v6

    const-string v2, "{"

    aput-object v2, v1, v7

    const-string v2, "}"

    aput-object v2, v1, v8

    invoke-virtual {v0, v6, v1}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setup(I[Ljava/lang/String;)V

    const/4 v9, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey6:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, ";"

    aput-object v2, v1, v5

    const-string v2, ":"

    aput-object v2, v1, v4

    const-string v2, "."

    aput-object v2, v1, v6

    const-string v2, ","

    aput-object v2, v1, v7

    const-string v2, "_"

    aput-object v2, v1, v8

    invoke-virtual {v0, v7, v1}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setup(I[Ljava/lang/String;)V

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey7:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "="

    aput-object v2, v1, v5

    const-string v2, "+"

    aput-object v2, v1, v4

    const-string v2, "-"

    aput-object v2, v1, v6

    const-string v2, "*"

    aput-object v2, v1, v7

    const-string v2, "^"

    aput-object v2, v1, v8

    invoke-virtual {v0, v8, v1}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setup(I[Ljava/lang/String;)V

    const/4 v9, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey8:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "&"

    aput-object v3, v2, v5

    const-string v3, "/"

    aput-object v3, v2, v4

    const-string v3, "\\"

    aput-object v3, v2, v6

    const-string v3, "\u00b4"

    aput-object v3, v2, v7

    const-string v3, "`"

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setup(I[Ljava/lang/String;)V

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey9:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "!"

    aput-object v3, v2, v5

    const-string v3, "|"

    aput-object v3, v2, v4

    const-string v3, "?"

    aput-object v3, v2, v6

    const-string v3, "@"

    aput-object v3, v2, v7

    const-string v3, "%"

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setup(I[Ljava/lang/String;)V

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey10:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "$"

    aput-object v3, v2, v5

    const-string v3, "\u00a3"

    aput-object v3, v2, v4

    const-string v3, "\u20ac"

    aput-object v3, v2, v6

    const-string v3, "#"

    aput-object v3, v2, v7

    const-string v3, "\u00ac"

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setup(I[Ljava/lang/String;)V

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey1:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity;->mKeysListener:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setListener(Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;)V

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey2:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity;->mKeysListener:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setListener(Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;)V

    const/4 v9, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey3:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity;->mKeysListener:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setListener(Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;)V

    const/4 v9, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey4:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity;->mKeysListener:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setListener(Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;)V

    const/4 v9, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey5:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity;->mKeysListener:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setListener(Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;)V

    const/4 v9, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey6:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity;->mKeysListener:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setListener(Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;)V

    const/4 v9, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey7:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity;->mKeysListener:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setListener(Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;)V

    const/4 v9, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey8:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity;->mKeysListener:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setListener(Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;)V

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey9:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity;->mKeysListener:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setListener(Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;)V

    const/4 v9, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mAdditionalKey10:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity;->mKeysListener:Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton;->setListener(Lcom/henrythompson/quoda/widget/FiveWayKeyboardButton$FiveWayKeyboardListener;)V

    const/4 v9, 0x4

    const v0, 0x7f08002d

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mRootView:Landroid/view/View;

    const/4 v9, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/henrythompson/quoda/EditorActivity$2;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/EditorActivity$2;-><init>(Lcom/henrythompson/quoda/EditorActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v9, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorActivity;->configureWorkspace()V

    const/4 v9, 0x6

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/QuodaPreferences;->getTutorialShown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v9, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorActivity;->startTutorial()V

    const/4 v9, 0x2

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/henrythompson/quoda/QuodaPreferences;->setTutorialShown(Z)V

    goto/16 :goto_0

    const/4 v0, 0x3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v2, 0x5

    const/4 v2, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/henrythompson/quoda/EditorPanel;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v2, 0x2

    const/4 v0, 0x1

    return v0

    const/4 v2, 0x7
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x7

    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;->onDestroy()V

    const/4 v1, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/henrythompson/quoda/DataController;->removeListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v6, 0x4

    const/16 v5, 0x8

    const v4, 0x7f0800ab

    const/4 v2, 0x1

    const/4 v6, 0x1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    const/4 v6, 0x5

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v5, :cond_0

    const/4 v6, 0x6

    invoke-virtual {p0, v4}, Lcom/henrythompson/quoda/EditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v6, 0x3

    const v3, 0x7f01000e

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v6, 0x5

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v6, 0x7

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    const/4 v6, 0x7

    :goto_0
    return v2

    const/4 v4, 0x7

    const/4 v6, 0x7

    :cond_0
    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/QuodaPreferences;->getVolumeUpAsCtrlEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v6, 0x1

    const/16 v3, 0x18

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    if-eqz v3, :cond_1

    const/4 v6, 0x4

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/EditorPanel;->onVolumeUp()V

    goto :goto_0

    const/4 v5, 0x7

    const/4 v6, 0x6

    :cond_1
    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/henrythompson/quoda/QuodaPreferences;->getVolumeDownAsAltEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v6, 0x2

    const/16 v3, 0x19

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    if-eqz v3, :cond_2

    const/4 v6, 0x7

    iget-object v3, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v3}, Lcom/henrythompson/quoda/EditorPanel;->onVolumeDown()V

    goto :goto_0

    const/4 v0, 0x7

    const/4 v6, 0x0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    const/4 v1, 0x4
.end method

.method public onLowMemory()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/DataController;->onLowMemory()V

    const/4 v1, 0x2

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/EditorPanel;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    const/4 v1, 0x2
.end method

.method public onPause()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x2

    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;->onPause()V

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/EditorActivity;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/document/DocumentsManager;->cacheDisplayedDocument()V

    const/4 v1, 0x3

    :cond_0
    nop

    return-void

    const/4 v1, 0x2
.end method

.method public onReceiveCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x5

    const/4 v0, 0x0

    return v0

    const/4 v0, 0x0
.end method

.method public onReceiveEvent(I[Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x1a

    if-ne p1, v0, :cond_1

    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorActivity;->configureWorkspace()V

    const/4 v2, 0x4

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v0, 0x4

    const/4 v2, 0x4

    :cond_1
    const/16 v0, 0x23

    if-ne p1, v0, :cond_2

    const/4 v2, 0x4

    if-eqz p2, :cond_0

    instance-of v0, p2, [Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    check-cast p2, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/henrythompson/quoda/EditorActivity;->displayMessageToUser([Ljava/lang/String;)V

    goto :goto_0

    const/4 v0, 0x2

    const/4 v2, 0x6

    :cond_2
    const/16 v0, 0x24

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    const/4 v0, 0x0

    aget-object v0, p2, v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    const/4 v2, 0x5
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x4

    const/4 v4, 0x4

    invoke-super {p0, p1, p2, p3}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorActivity;->mFileBrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    if-eqz v2, :cond_0

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorActivity;->mFileBrowserPanel:Lcom/henrythompson/quoda/FileBrowserPanel;

    invoke-virtual {v2, p1, p2, p3}, Lcom/henrythompson/quoda/FileBrowserPanel;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v4, 0x2

    :cond_0
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    if-eqz v2, :cond_1

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorActivity;->mEditorPanel:Lcom/henrythompson/quoda/EditorPanel;

    invoke-virtual {v2, p1, p2, p3}, Lcom/henrythompson/quoda/EditorPanel;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v4, 0x3

    :cond_1
    iget-object v2, p0, Lcom/henrythompson/quoda/EditorActivity;->mPreviewPanel:Lcom/henrythompson/quoda/PreviewFragment;

    if-eqz v2, :cond_2

    const/4 v4, 0x2

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorActivity;->mPreviewPanel:Lcom/henrythompson/quoda/PreviewFragment;

    invoke-virtual {v2, p1, p2, p3}, Lcom/henrythompson/quoda/PreviewFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    const/4 v4, 0x3

    :cond_2
    packed-switch p1, :pswitch_data_0

    const/4 v4, 0x1

    :goto_0
    nop

    return-void

    const/4 v3, 0x3

    const/4 v4, 0x5

    :pswitch_0
    const/4 v0, 0x1

    const/4 v4, 0x3

    array-length v3, p3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget v1, p3, v2

    const/4 v4, 0x5

    if-eqz v1, :cond_5

    const/4 v4, 0x6

    const/4 v0, 0x0

    const/4 v4, 0x4

    :cond_3
    array-length v2, p3

    if-eqz v2, :cond_4

    if-nez v0, :cond_6

    const/4 v4, 0x4

    :cond_4
    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorActivity;->warnNoPermissions()V

    goto :goto_0

    const/4 v0, 0x1

    const/4 v4, 0x3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    const/4 v1, 0x0

    const/4 v4, 0x4

    :cond_6
    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    goto :goto_0

    const/4 v3, 0x6

    const/4 v4, 0x5

    :pswitch_data_0
    .packed-switch 0x70d5a3
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;->onResume()V

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorActivity;->requestNecessaryPermissions()V

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorActivity;->isUsingTabletLayout()Z

    move-result v0

    sput-boolean v0, Lcom/henrythompson/quoda/QuodaApplication;->IS_TABLET:Z

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/henrythompson/quoda/EditorActivity;->checkIfDatamanagerLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x5

    const-string v0, "EditorActivity"

    const-string v1, "Data manager not loaded in onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    :cond_0
    nop

    return-void

    const/4 v2, 0x6
.end method

.method public onStart()V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x6

    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;->onStart()V

    const/4 v1, 0x7

    sget-boolean v0, Lcom/henrythompson/quoda/QuodaApplication;->IS_UPDATE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/henrythompson/quoda/QuodaApplication;->IS_UPDATE_INFO_DIALOG_SHOWN:Z

    if-nez v0, :cond_0

    const/4 v1, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/EditorActivity;->showChangesDialog()V

    const/4 v1, 0x1

    :cond_0
    nop

    return-void

    const/4 v0, 0x6
.end method

.method public requestNecessaryPermissions()V
    .locals 4

    const/4 v3, 0x6

    const/4 v3, 0x0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    const/4 v3, 0x5

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x6

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.permission.INTERNET"

    const/4 v3, 0x5

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x6

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d019d

    const/4 v3, 0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d002a

    const/4 v3, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0064

    new-instance v2, Lcom/henrythompson/quoda/EditorActivity$15;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/EditorActivity$15;-><init>(Lcom/henrythompson/quoda/EditorActivity;)V

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v3, 0x6

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v3, 0x2

    :cond_1
    nop

    return-void

    const/4 v2, 0x3
.end method

.method public showSaveModifiedFilesBeforeExitDialog()V
    .locals 13

    const/4 v12, 0x5

    const/4 v12, 0x7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x7

    iget-object v9, p0, Lcom/henrythompson/quoda/EditorActivity;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v9}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocumentCount()I

    move-result v2

    const/4 v12, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/henrythompson/quoda/EditorActivity;->mDocumentsManager:Lcom/henrythompson/quoda/document/DocumentsManager;

    invoke-virtual {v9, v6}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocument(I)Lcom/henrythompson/quoda/document/Document;

    move-result-object v1

    const/4 v12, 0x2

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getFileObject()Lcom/henrythompson/quoda/filesystem/FileObject;

    move-result-object v9

    invoke-virtual {v9}, Lcom/henrythompson/quoda/filesystem/FileObject;->getFilepath()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getIsSaved()Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v12, 0x1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x7

    invoke-virtual {v1}, Lcom/henrythompson/quoda/document/Document;->getUUID()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    const/4 v10, 0x4

    const/4 v12, 0x2

    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v12, 0x5

    if-nez v7, :cond_2

    const/4 v12, 0x0

    invoke-super {p0}, Lcom/henrythompson/quoda/AuthHandlingFragmentActivity;->finish()V

    const/4 v12, 0x0

    :goto_1
    nop

    return-void

    const/4 v3, 0x3

    const/4 v12, 0x6

    :cond_2
    new-array v4, v7, [Ljava/lang/CharSequence;

    const/4 v12, 0x3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v7, :cond_3

    const/4 v12, 0x6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    aput-object v9, v4, v6

    const/4 v12, 0x4

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    const/4 v5, 0x6

    const/4 v12, 0x1

    :cond_3
    new-array v8, v7, [Z

    const/4 v12, 0x3

    const/4 v6, 0x0

    :goto_3
    array-length v9, v8

    if-ge v6, v9, :cond_4

    const/4 v12, 0x6

    const/4 v9, 0x1

    aput-boolean v9, v8, v6

    const/4 v12, 0x3

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    const/4 v11, 0x2

    const/4 v12, 0x1

    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v12, 0x0

    const v9, 0x7f0d00ac

    invoke-virtual {p0, v9}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    new-instance v10, Lcom/henrythompson/quoda/EditorActivity$6;

    invoke-direct {v10, p0, v8}, Lcom/henrythompson/quoda/EditorActivity$6;-><init>(Lcom/henrythompson/quoda/EditorActivity;[Z)V

    const/4 v12, 0x6

    invoke-virtual {v9, v4, v8, v10}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d01a2

    const/4 v12, 0x1

    invoke-virtual {p0, v10}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/henrythompson/quoda/EditorActivity$5;

    invoke-direct {v11, p0, v7, v5, v8}, Lcom/henrythompson/quoda/EditorActivity$5;-><init>(Lcom/henrythompson/quoda/EditorActivity;ILjava/util/ArrayList;[Z)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d002e

    const/4 v12, 0x5

    invoke-virtual {p0, v10}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0d00ab

    const/4 v12, 0x2

    invoke-virtual {p0, v10}, Lcom/henrythompson/quoda/EditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/henrythompson/quoda/EditorActivity$4;

    invoke-direct {v11, p0}, Lcom/henrythompson/quoda/EditorActivity$4;-><init>(Lcom/henrythompson/quoda/EditorActivity;)V

    invoke-virtual {v9, v10, v11}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v12, 0x0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    const/4 v2, 0x7
.end method

.method public softKeyboardVisible()Z
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/EditorActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/henrythompson/quoda/EditorActivity;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int v0, v1, v2

    const/4 v3, 0x0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    const/4 v2, 0x0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    const/4 v2, 0x0
.end method
