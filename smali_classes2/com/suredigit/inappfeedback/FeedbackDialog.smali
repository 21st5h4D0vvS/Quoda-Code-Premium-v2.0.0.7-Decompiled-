.class public Lcom/suredigit/inappfeedback/FeedbackDialog;
.super Ljava/lang/Object;
.source "FeedbackDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;
    }
.end annotation


# static fields
.field private static final APIVER:Ljava/lang/String; = "1"

.field private static CONN_TIMEOUT:I = 0x0

.field public static LOGT:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes; = null

.field private static final MAX_PENDING_ITEMS:I = 0x14

.field private static final POSTURL:Ljava/lang/String; = "http://www.android-feedback.com/service/1"

.field private static final PREFS_NAME:Ljava/lang/String; = "inappfeedback_prefs"

.field private static final REPLIESURL:Ljava/lang/String; = "http://www.android-feedback.com/service/1/getPending/"

.field private static final TAG:Ljava/lang/String; = "FeedbackDialog"


# instance fields
.field private APPUID:Ljava/lang/String;

.field private UUID:Ljava/lang/String;

.field private builder:Landroid/app/AlertDialog$Builder;

.field private eTcomments:Landroid/widget/EditText;

.field private ll:Landroid/widget/LinearLayout;

.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mFeedBackItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/suredigit/inappfeedback/FeedBackItem;",
            ">;"
        }
    .end annotation
.end field

.field private mResponseDialog:Landroid/app/AlertDialog;

.field private mSettings:Lcom/suredigit/inappfeedback/FeedbackSettings;

.field private rGroup:Landroid/widget/RadioGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;->NONE:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    sput-object v0, Lcom/suredigit/inappfeedback/FeedbackDialog;->LOGT:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    .line 61
    const/16 v0, 0x1388

    sput v0, Lcom/suredigit/inappfeedback/FeedbackDialog;->CONN_TIMEOUT:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/suredigit/inappfeedback/FeedbackSettings;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appUID"    # Ljava/lang/String;
    .param p3, "settings"    # Lcom/suredigit/inappfeedback/FeedbackSettings;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lcom/suredigit/inappfeedback/FeedbackDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 96
    iput-object p3, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mSettings:Lcom/suredigit/inappfeedback/FeedbackSettings;

    .line 97
    invoke-direct {p0}, Lcom/suredigit/inappfeedback/FeedbackDialog;->createDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mDialog:Landroid/app/AlertDialog;

    .line 98
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/suredigit/inappfeedback/FeedbackDialog;->createLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appUID"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mFeedBackItems:Ljava/util/ArrayList;

    move-object v0, p1

    .line 84
    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mActivity:Landroid/app/Activity;

    .line 85
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Lcom/suredigit/inappfeedback/FeedbackSettings;

    invoke-direct {v0}, Lcom/suredigit/inappfeedback/FeedbackSettings;-><init>()V

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mSettings:Lcom/suredigit/inappfeedback/FeedbackSettings;

    .line 87
    iput-object p2, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->APPUID:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/suredigit/inappfeedback/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->UUID:Ljava/lang/String;

    .line 89
    invoke-direct {p0}, Lcom/suredigit/inappfeedback/FeedbackDialog;->initialise()V

    .line 90
    invoke-direct {p0}, Lcom/suredigit/inappfeedback/FeedbackDialog;->createDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mDialog:Landroid/app/AlertDialog;

    .line 91
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/suredigit/inappfeedback/FeedbackDialog;->createLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 92
    return-void
.end method

.method static synthetic access$0(Lcom/suredigit/inappfeedback/FeedbackDialog;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->eTcomments:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/suredigit/inappfeedback/FeedbackDialog;)Lcom/suredigit/inappfeedback/FeedBackItem;
    .locals 1

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/suredigit/inappfeedback/FeedbackDialog;->createFeedBackItem()Lcom/suredigit/inappfeedback/FeedBackItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/suredigit/inappfeedback/FeedbackDialog;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mResponseDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$11(Lcom/suredigit/inappfeedback/FeedbackDialog;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mResponseDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2(Lcom/suredigit/inappfeedback/FeedbackDialog;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/suredigit/inappfeedback/FeedbackDialog;)Lcom/suredigit/inappfeedback/FeedbackSettings;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mSettings:Lcom/suredigit/inappfeedback/FeedbackSettings;

    return-object v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/suredigit/inappfeedback/FeedbackDialog;->CONN_TIMEOUT:I

    return v0
.end method

.method static synthetic access$5(Lcom/suredigit/inappfeedback/FeedbackDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mFeedBackItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$6(Lcom/suredigit/inappfeedback/FeedbackDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->APPUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/suredigit/inappfeedback/FeedbackDialog;)Z
    .locals 1

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/suredigit/inappfeedback/FeedbackDialog;->saveUnsentItems()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/suredigit/inappfeedback/FeedbackDialog;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->UUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/suredigit/inappfeedback/FeedbackDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private createDialog()Landroid/app/AlertDialog;
    .locals 3

    .prologue
    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->builder:Landroid/app/AlertDialog$Builder;

    .line 126
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->builder:Landroid/app/AlertDialog$Builder;

    .line 127
    iget-object v1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mSettings:Lcom/suredigit/inappfeedback/FeedbackSettings;

    invoke-virtual {v0}, Lcom/suredigit/inappfeedback/FeedbackSettings;->isModal()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 128
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mSettings:Lcom/suredigit/inappfeedback/FeedbackSettings;

    invoke-virtual {v1}, Lcom/suredigit/inappfeedback/FeedbackSettings;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 141
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mSettings:Lcom/suredigit/inappfeedback/FeedbackSettings;

    invoke-virtual {v1}, Lcom/suredigit/inappfeedback/FeedbackSettings;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 142
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mSettings:Lcom/suredigit/inappfeedback/FeedbackSettings;

    invoke-virtual {v1}, Lcom/suredigit/inappfeedback/FeedbackSettings;->getSendButtonText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/suredigit/inappfeedback/FeedbackDialog$1;

    invoke-direct {v2, p0}, Lcom/suredigit/inappfeedback/FeedbackDialog$1;-><init>(Lcom/suredigit/inappfeedback/FeedbackDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mSettings:Lcom/suredigit/inappfeedback/FeedbackSettings;

    invoke-virtual {v1}, Lcom/suredigit/inappfeedback/FeedbackSettings;->getCancelButtonText()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/suredigit/inappfeedback/FeedbackDialog$2;

    invoke-direct {v2, p0}, Lcom/suredigit/inappfeedback/FeedbackDialog$2;-><init>(Lcom/suredigit/inappfeedback/FeedbackDialog;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 127
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createFeedBackItem()Lcom/suredigit/inappfeedback/FeedBackItem;
    .locals 18

    .prologue
    .line 212
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/suredigit/inappfeedback/FeedbackDialog;->eTcomments:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-interface {v9}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "comment":Ljava/lang/String;
    const-string v4, ""

    .line 215
    .local v4, "type":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/suredigit/inappfeedback/FeedbackDialog;->rGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v9}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v11

    .line 216
    .local v11, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-lt v12, v11, :cond_1

    .line 224
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mSettings:Lcom/suredigit/inappfeedback/FeedbackSettings;

    invoke-virtual {v9}, Lcom/suredigit/inappfeedback/FeedbackSettings;->isEnableRadio()Z

    move-result v9

    if-nez v9, :cond_0

    .line 225
    const-string v4, "Feedback:"

    .line 228
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 229
    .local v5, "ts":Ljava/lang/String;
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 230
    .local v6, "model":Ljava/lang/String;
    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 231
    .local v7, "manufacturer":Ljava/lang/String;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 232
    .local v8, "sdk":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/suredigit/inappfeedback/FeedbackDialog;->UUID:Ljava/lang/String;

    .line 234
    .local v10, "uuid":Ljava/lang/String;
    new-instance v2, Lcom/suredigit/inappfeedback/FeedBackItem;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v2 .. v10}, Lcom/suredigit/inappfeedback/FeedBackItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .local v2, "fItem":Lcom/suredigit/inappfeedback/FeedBackItem;
    return-object v2

    .line 217
    .end local v2    # "fItem":Lcom/suredigit/inappfeedback/FeedBackItem;
    .end local v5    # "ts":Ljava/lang/String;
    .end local v6    # "model":Ljava/lang/String;
    .end local v7    # "manufacturer":Ljava/lang/String;
    .end local v8    # "sdk":Ljava/lang/String;
    .end local v10    # "uuid":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/suredigit/inappfeedback/FeedbackDialog;->rGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v9, v12}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioButton;

    .line 218
    .local v13, "theButton":Landroid/widget/RadioButton;
    invoke-virtual {v13}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 219
    invoke-virtual {v13}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 220
    goto :goto_1

    .line 216
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_0
.end method

.method private createLayout()Landroid/widget/LinearLayout;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/16 v7, 0xa

    const/4 v6, -0x2

    .line 163
    new-instance v4, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->ll:Landroid/widget/LinearLayout;

    .line 164
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7, v7, v7, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 165
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->ll:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 166
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->ll:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v4, Landroid/widget/EditText;

    iget-object v5, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->eTcomments:Landroid/widget/EditText;

    .line 173
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->eTcomments:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mSettings:Lcom/suredigit/inappfeedback/FeedbackSettings;

    invoke-virtual {v5}, Lcom/suredigit/inappfeedback/FeedbackSettings;->getYourComments()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->eTcomments:Landroid/widget/EditText;

    const v5, 0x24001

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 175
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->eTcomments:Landroid/widget/EditText;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v5, v8, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->eTcomments:Landroid/widget/EditText;

    invoke-virtual {v4, v9}, Landroid/widget/EditText;->setMinLines(I)V

    .line 177
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->eTcomments:Landroid/widget/EditText;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 179
    new-instance v4, Landroid/widget/RadioGroup;

    iget-object v5, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->rGroup:Landroid/widget/RadioGroup;

    .line 180
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->rGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v10}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 181
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 182
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0x14

    const/16 v5, 0x14

    invoke-virtual {v0, v10, v4, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 183
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->rGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v0}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 185
    new-instance v1, Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 186
    .local v1, "rBbug":Landroid/widget/RadioButton;
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mSettings:Lcom/suredigit/inappfeedback/FeedbackSettings;

    invoke-virtual {v4}, Lcom/suredigit/inappfeedback/FeedbackSettings;->getBugLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 187
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->rGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v1}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 190
    new-instance v2, Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 191
    .local v2, "rBidea":Landroid/widget/RadioButton;
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mSettings:Lcom/suredigit/inappfeedback/FeedbackSettings;

    invoke-virtual {v4}, Lcom/suredigit/inappfeedback/FeedbackSettings;->getIdeaLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 192
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 193
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->rGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 195
    new-instance v3, Landroid/widget/RadioButton;

    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 196
    .local v3, "rBquestion":Landroid/widget/RadioButton;
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mSettings:Lcom/suredigit/inappfeedback/FeedbackSettings;

    invoke-virtual {v4}, Lcom/suredigit/inappfeedback/FeedbackSettings;->getQuestionLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 197
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->rGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v3}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 200
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->rGroup:Landroid/widget/RadioGroup;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->setGravity(I)V

    .line 202
    invoke-virtual {v3, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 204
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->ll:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->eTcomments:Landroid/widget/EditText;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mSettings:Lcom/suredigit/inappfeedback/FeedbackSettings;

    invoke-virtual {v4}, Lcom/suredigit/inappfeedback/FeedbackSettings;->isEnableRadio()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->ll:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->rGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    :cond_0
    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->ll:Landroid/widget/LinearLayout;

    return-object v4
.end method

.method private initialise()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/suredigit/inappfeedback/FeedbackDialog;->loadUnsentItems(Landroid/app/Activity;)V

    .line 116
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mFeedBackItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 117
    sget-object v0, Lcom/suredigit/inappfeedback/FeedbackDialog;->LOGT:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    sget-object v1, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;->DEBUG:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    if-ne v0, v1, :cond_0

    .line 118
    const-string v0, "FeedbackDialog"

    const-string v1, "Found pending feedback items"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/suredigit/inappfeedback/FeedbackDialog;->sendFeedback(Lcom/suredigit/inappfeedback/FeedBackItem;Z)V

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/suredigit/inappfeedback/FeedbackDialog;->getPendingResponses()V

    .line 122
    return-void
.end method

.method private loadUnsentItems(Landroid/app/Activity;)V
    .locals 19
    .param p1, "hostActivity"    # Landroid/app/Activity;

    .prologue
    .line 418
    const-string v1, "inappfeedback_prefs"

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 419
    .local v16, "preferences":Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mFeedBackItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 420
    const-string v1, "com.suredigit.feedbackdialog.pending_size"

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v17

    .line 422
    .local v17, "size":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    move/from16 v0, v17

    if-lt v12, v0, :cond_0

    .line 441
    return-void

    .line 423
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.suredigit.feedbackdialog.pending_item_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 424
    .local v15, "jsonTxt":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 425
    const/4 v13, 0x0

    .line 427
    .local v13, "json":Lorg/json/JSONObject;
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13    # "json":Lorg/json/JSONObject;
    .local v14, "json":Lorg/json/JSONObject;
    move-object v13, v14

    .line 432
    .end local v14    # "json":Lorg/json/JSONObject;
    .restart local v13    # "json":Lorg/json/JSONObject;
    :goto_1
    if-eqz v13, :cond_1

    .line 433
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mFeedBackItems:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    new-instance v1, Lcom/suredigit/inappfeedback/FeedBackItem;

    const-string v2, "comment"

    invoke-virtual {v13, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ts"

    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 434
    const-string v5, "model"

    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "manufacturer"

    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "sdk"

    invoke-virtual {v13, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "pname"

    invoke-virtual {v13, v8}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 435
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "UUID"

    invoke-virtual {v13, v9}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/suredigit/inappfeedback/FeedBackItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 422
    .end local v13    # "json":Lorg/json/JSONObject;
    :cond_1
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 428
    .restart local v13    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v11

    .line 429
    .local v11, "e1":Lorg/json/JSONException;
    invoke-virtual {v11}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 436
    .end local v11    # "e1":Lorg/json/JSONException;
    :catch_1
    move-exception v10

    .line 437
    .local v10, "e":Lorg/json/JSONException;
    invoke-virtual {v10}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method private saveUnsentItems()Z
    .locals 6

    .prologue
    .line 397
    iget-object v3, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mActivity:Landroid/app/Activity;

    const-string v4, "inappfeedback_prefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 398
    .local v2, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 399
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "com.suredigit.feedbackdialog.pending_size"

    iget-object v4, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mFeedBackItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 402
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v3, 0x14

    if-lt v1, v3, :cond_1

    .line 408
    iget-object v3, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mFeedBackItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 409
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mFeedBackItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 414
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    return v3

    .line 403
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.suredigit.feedbackdialog.pending_item_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 402
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "com.suredigit.feedbackdialog.pending_item_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mFeedBackItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/suredigit/inappfeedback/FeedBackItem;

    invoke-virtual {v3}, Lcom/suredigit/inappfeedback/FeedBackItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mResponseDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mResponseDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 457
    :cond_1
    return-void
.end method

.method protected getPendingResponses()V
    .locals 1

    .prologue
    .line 323
    new-instance v0, Lcom/suredigit/inappfeedback/FeedbackDialog$4;

    invoke-direct {v0, p0}, Lcom/suredigit/inappfeedback/FeedbackDialog$4;-><init>(Lcom/suredigit/inappfeedback/FeedbackDialog;)V

    .line 392
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 393
    return-void
.end method

.method protected sendFeedback(Lcom/suredigit/inappfeedback/FeedBackItem;Z)V
    .locals 1
    .param p1, "fi"    # Lcom/suredigit/inappfeedback/FeedBackItem;
    .param p2, "toast"    # Z

    .prologue
    .line 240
    new-instance v0, Lcom/suredigit/inappfeedback/FeedbackDialog$3;

    invoke-direct {v0, p0, p1}, Lcom/suredigit/inappfeedback/FeedbackDialog$3;-><init>(Lcom/suredigit/inappfeedback/FeedbackDialog;Lcom/suredigit/inappfeedback/FeedBackItem;)V

    .line 319
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 320
    return-void
.end method

.method public setDebug(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 108
    if-eqz p1, :cond_0

    .line 109
    sget-object v0, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;->DEBUG:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    sput-object v0, Lcom/suredigit/inappfeedback/FeedbackDialog;->LOGT:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    sget-object v0, Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;->NONE:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    sput-object v0, Lcom/suredigit/inappfeedback/FeedbackDialog;->LOGT:Lcom/suredigit/inappfeedback/FeedbackDialog$LogTypes;

    goto :goto_0
.end method

.method public setSettings(Lcom/suredigit/inappfeedback/FeedbackSettings;)V
    .locals 2
    .param p1, "settings"    # Lcom/suredigit/inappfeedback/FeedbackSettings;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mSettings:Lcom/suredigit/inappfeedback/FeedbackSettings;

    .line 103
    invoke-direct {p0}, Lcom/suredigit/inappfeedback/FeedbackDialog;->createDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mDialog:Landroid/app/AlertDialog;

    .line 104
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/suredigit/inappfeedback/FeedbackDialog;->createLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 105
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 444
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->eTcomments:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->eTcomments:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/suredigit/inappfeedback/FeedbackDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 448
    return-void
.end method
