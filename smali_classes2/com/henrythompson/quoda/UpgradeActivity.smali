.class public Lcom/henrythompson/quoda/UpgradeActivity;
.super Landroid/app/Activity;


# static fields
.field public static final EXTRA_TRIGGER:Ljava/lang/String; = "trigger"

.field public static final FROM_APP_OPEN:Ljava/lang/String; = "open"

.field public static final FROM_CODE_COMPLETE:Ljava/lang/String; = "trigger"

.field public static final FROM_DROPBOX:Ljava/lang/String; = "dropbox"

.field public static final FROM_GOOGLE_DRIVE:Ljava/lang/String; = "google_drive"

.field public static final FROM_LOCKED_FEATURE:Ljava/lang/String; = "locked_feature"

.field public static final FROM_MENU:Ljava/lang/String; = "menu"

.field public static final FROM_SERVER:Ljava/lang/String; = "server"

.field public static final QUODA_UPGRADE_ALL_SKUS:[Ljava/lang/String;

.field public static final QUODA_UPGRADE_SKU:Ljava/lang/String; = "quoda_premium"

.field public static final REQUEST_CODE_UPGRADE:I = 0x4d2


# instance fields
.field private mOnlyTextView:Landroid/widget/TextView;

.field private mPriceTextView:Landroid/widget/TextView;

.field private mService:Lcom/android/vending/billing/IInAppBillingService;

.field private mServiceBound:Z

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private mUpgradeClicked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x4

    const/4 v3, 0x6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "quoda_premium"

    aput-object v2, v0, v1

    sput-object v0, Lcom/henrythompson/quoda/UpgradeActivity;->QUODA_UPGRADE_ALL_SKUS:[Ljava/lang/String;

    nop

    return-void

    const/4 v3, 0x3
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x5

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x7

    iput-boolean v0, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mUpgradeClicked:Z

    const/4 v1, 0x7

    iput-boolean v0, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mServiceBound:Z

    const/4 v1, 0x5

    new-instance v0, Lcom/henrythompson/quoda/UpgradeActivity$1;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/UpgradeActivity$1;-><init>(Lcom/henrythompson/quoda/UpgradeActivity;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mServiceConn:Landroid/content/ServiceConnection;

    nop

    return-void

    const/4 v1, 0x5
.end method

.method static synthetic access$002(Lcom/henrythompson/quoda/UpgradeActivity;Z)Z
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mServiceBound:Z

    return p1

    const/4 v0, 0x5
.end method

.method static synthetic access$102(Lcom/henrythompson/quoda/UpgradeActivity;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1

    const/4 v0, 0x0
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/UpgradeActivity;)Z
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x7

    iget-boolean v0, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mUpgradeClicked:Z

    return v0

    const/4 v0, 0x1
.end method

.method static synthetic access$202(Lcom/henrythompson/quoda/UpgradeActivity;Z)Z
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x2

    iput-boolean p1, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mUpgradeClicked:Z

    return p1

    const/4 v0, 0x0
.end method

.method public static generatePayload()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x3

    const/4 v6, 0x6

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v6, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x3

    const/16 v5, 0x64

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/4 v6, 0x7

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    const/4 v6, 0x6

    const/16 v5, 0x60

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x20

    int-to-char v4, v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    const/4 v2, 0x0

    const/4 v6, 0x5

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    const/4 v6, 0x5
.end method

.method private showDialog()V
    .locals 15

    const v14, 0x7f080099

    new-instance v2, Landroid/app/Dialog;

    const v13, 0x7f0e00a5

    invoke-direct {v2, p0, v13}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const v13, 0x7f0a0030

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->setContentView(I)V

    invoke-virtual {p0}, Lcom/henrythompson/quoda/UpgradeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v13, "trigger"

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :goto_0
    if-eqz v10, :cond_4

    invoke-virtual {v2, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const-string v13, "locked_feature"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const v13, 0x7f0d0195

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const-string v13, "dropbox"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const v13, 0x7f0d0198

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const-string v13, "google_drive"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const v13, 0x7f0d0197

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    const-string v13, "server"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const v13, 0x7f0d0199

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    const-string v13, "trigger"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const v13, 0x7f0d0196

    invoke-virtual {v8, v13}, Landroid/widget/TextView;->setText(I)V

    :cond_4
    const v13, 0x7f080098

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mPriceTextView:Landroid/widget/TextView;

    const v13, 0x7f080096

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mOnlyTextView:Landroid/widget/TextView;

    const v13, 0x7f08009b

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    new-instance v13, Lcom/henrythompson/quoda/UpgradeActivity$5;

    invoke-direct {v13, p0, v2}, Lcom/henrythompson/quoda/UpgradeActivity$5;-><init>(Lcom/henrythompson/quoda/UpgradeActivity;Landroid/app/Dialog;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v13, 0x7f080090

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v13, Lcom/henrythompson/quoda/UpgradeActivity$6;

    invoke-direct {v13, p0, v2}, Lcom/henrythompson/quoda/UpgradeActivity$6;-><init>(Lcom/henrythompson/quoda/UpgradeActivity;Landroid/app/Dialog;)V

    invoke-virtual {v1, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v13, 0x7f08009a

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v13, 0x7f080091

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v13, 0x7f080092

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v13, 0x7f080093

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v13, 0x7f080094

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    :try_start_0
    invoke-virtual {p0}, Lcom/henrythompson/quoda/UpgradeActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v13

    const-string v14, "fonts/RobotoLight.ttf"

    invoke-static {v13, v14}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v13, Lcom/henrythompson/quoda/UpgradeActivity$7;

    invoke-direct {v13, p0}, Lcom/henrythompson/quoda/UpgradeActivity$7;-><init>(Lcom/henrythompson/quoda/UpgradeActivity;)V

    invoke-virtual {v2, v13}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    nop

    return-void

    const/4 v10, 0x6

    :cond_5
    const-string v10, ""

    goto/16 :goto_0

    const/4 v1, 0x4

    :catch_0
    move-exception v3

    const-string v13, "UpgradeActivity"

    const-string v14, "Exception when loading typeface"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    const/4 v2, 0x6
.end method


# virtual methods
.method public getUpgradeLocalPrice()V
    .locals 15

    const/4 v14, 0x3

    const/16 v13, 0x8

    const/4 v14, 0x1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x1

    const-string v9, "quoda_premium"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v14, 0x1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v14, 0x3

    const-string v9, "ITEM_ID_LIST"

    invoke-virtual {v2, v9, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v14, 0x4

    :try_start_0
    iget-object v9, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v10, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/UpgradeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "subs"

    invoke-interface {v9, v10, v11, v12, v2}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    const/4 v14, 0x5

    const-string v9, "RESPONSE_CODE"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const/4 v14, 0x5

    if-nez v3, :cond_1

    const/4 v14, 0x5

    const-string v9, "DETAILS_LIST"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v14, 0x3

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v14, 0x4

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v14, 0x7

    const-string v10, "productId"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x7

    const-string v10, "quoda_premium"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v14, 0x6

    iget-object v9, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mPriceTextView:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v14, 0x1

    iget-object v9, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mOnlyTextView:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v14, 0x1

    iget-object v9, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mPriceTextView:Landroid/widget/TextView;

    const-string v10, "price"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v14, 0x2

    :goto_0
    nop

    return-void

    const/4 v11, 0x1

    const/4 v14, 0x4

    :catch_0
    move-exception v0

    const/4 v14, 0x4

    iget-object v9, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mPriceTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v14, 0x3

    iget-object v9, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mOnlyTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    const/4 v12, 0x3

    const/4 v14, 0x7

    :catch_1
    move-exception v0

    const/4 v14, 0x3

    iget-object v9, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mPriceTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v14, 0x3

    iget-object v9, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mOnlyTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    const/4 v11, 0x1

    const/4 v14, 0x7

    :cond_1
    iget-object v9, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mPriceTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v14, 0x0

    iget-object v9, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mOnlyTextView:Landroid/widget/TextView;

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    const/4 v9, 0x5
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const v8, 0x7f0d018c

    const/4 v11, 0x2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v11, 0x1

    const/16 v6, 0x4d2

    if-ne p1, v6, :cond_0

    const/4 v11, 0x4

    const-string v6, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x6

    const/4 v6, -0x1

    if-ne p2, v6, :cond_1

    const/4 v11, 0x6

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x6

    const-string v6, "productId"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v11, 0x6

    if-eqz v5, :cond_0

    const-string v6, "quoda_premium"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v11, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x2

    const v6, 0x7f0d0193

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v11, 0x6

    const v6, 0x7f0d0194

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v11, 0x2

    const v6, 0x7f0d018c

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v11, 0x3

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v11, 0x1

    new-instance v6, Lcom/henrythompson/quoda/UpgradeActivity$2;

    invoke-direct {v6, p0}, Lcom/henrythompson/quoda/UpgradeActivity$2;-><init>(Lcom/henrythompson/quoda/UpgradeActivity;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v11, 0x2

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const/4 v11, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/henrythompson/quoda/QuodaApplication;->setHasActivePremiumSubscription(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v11, 0x6

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v0, 0x6

    const/4 v11, 0x4

    :catch_0
    move-exception v2

    const/4 v11, 0x1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x5

    const v6, 0x7f0d00eb

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v11, 0x5

    const v6, 0x7f0d0192

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v11, 0x3

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v11, 0x2

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v11, 0x4

    new-instance v6, Lcom/henrythompson/quoda/UpgradeActivity$3;

    invoke-direct {v6, p0}, Lcom/henrythompson/quoda/UpgradeActivity$3;-><init>(Lcom/henrythompson/quoda/UpgradeActivity;)V

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v11, 0x6

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const/4 v11, 0x2

    invoke-static {v10}, Lcom/henrythompson/quoda/QuodaApplication;->setHasActivePremiumSubscription(Z)V

    goto :goto_0

    const/4 v0, 0x6

    const/4 v11, 0x6

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v11, 0x6

    const v6, 0x7f0d00b4

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v11, 0x1

    const v6, 0x7f0d00b3

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v11, 0x5

    invoke-virtual {v0, v8, v9}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v11, 0x7

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v11, 0x1

    new-instance v6, Lcom/henrythompson/quoda/UpgradeActivity$4;

    invoke-direct {v6, p0}, Lcom/henrythompson/quoda/UpgradeActivity$4;-><init>(Lcom/henrythompson/quoda/UpgradeActivity;)V

    invoke-virtual {v1, v6}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v11, 0x1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    const/4 v1, 0x5
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x4

    const v1, 0x7f0a0023

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/UpgradeActivity;->setContentView(I)V

    const/4 v3, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->hasActivePremiumSubscription()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/UpgradeActivity;->showDialog()V

    const/4 v3, 0x3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/henrythompson/quoda/UpgradeActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const/4 v3, 0x4

    :goto_0
    nop

    return-void

    const/4 v1, 0x3

    const/4 v3, 0x4

    :cond_0
    const v1, 0x7f0d0027

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/henrythompson/quoda/UpgradeActivity;->finish()V

    goto :goto_0

    const/4 v1, 0x7
.end method

.method public onDestroy()V
    .locals 5

    const/4 v4, 0x5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v4, 0x2

    iget-boolean v1, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mServiceBound:Z

    if-eqz v1, :cond_0

    const/4 v4, 0x5

    :try_start_0
    iget-object v1, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Lcom/henrythompson/quoda/UpgradeActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x3

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v1, 0x2

    const/4 v4, 0x2

    :catch_0
    move-exception v0

    const/4 v4, 0x6

    const-string v1, "UpgradeActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unbind service in onDestroy. IllegalArgumentException with message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x3

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    const/4 v1, 0x7
.end method

.method public showUpgradeFailureDialog()V
    .locals 5

    const/4 v4, 0x1

    const/4 v4, 0x2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v4, 0x6

    const v2, 0x7f0d00b4

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x1

    const v2, 0x7f0d00b3

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x0

    const v2, 0x7f0d018c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x7

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v4, 0x2

    new-instance v2, Lcom/henrythompson/quoda/UpgradeActivity$8;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/UpgradeActivity$8;-><init>(Lcom/henrythompson/quoda/UpgradeActivity;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 v4, 0x6

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    const/4 v4, 0x1

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public upgradeToPremium()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/UpgradeActivity;->generatePayload()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/henrythompson/quoda/UpgradeActivity;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/henrythompson/quoda/UpgradeActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "quoda_premium"

    const-string v4, "subs"

    invoke-interface/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    const-string v0, "RESPONSE_CODE"

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "BUY_INTENT"

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v14

    check-cast v14, Landroid/app/PendingIntent;

    invoke-virtual {v14}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v7

    const/16 v8, 0x4d2

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object v6, p0

    invoke-virtual/range {v6 .. v12}, Lcom/henrythompson/quoda/UpgradeActivity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v9, 0x4

    :cond_0
    move v0, v6

    goto :goto_0

    const/4 v5, 0x7
.end method
