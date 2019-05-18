.class public Lcom/henrythompson/quoda/SplashScreenActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/henrythompson/quoda/DataEventListener;


# instance fields
.field mDelayer:Ljava/lang/Runnable;

.field private mErrorMessageShowing:Z

.field private mHandler:Landroid/os/Handler;

.field private mManagersLoaded:Z

.field private mMinimumTimePassed:Z

.field private mPremiumCheckDone:Z

.field private mService:Lcom/android/vending/billing/IInAppBillingService;

.field private mServiceConn:Landroid/content/ServiceConnection;

.field private mUpdater:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x7

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mManagersLoaded:Z

    const/4 v1, 0x7

    iput-boolean v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mMinimumTimePassed:Z

    const/4 v1, 0x3

    iput-boolean v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mPremiumCheckDone:Z

    const/4 v1, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mErrorMessageShowing:Z

    const/4 v1, 0x5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    new-instance v0, Lcom/henrythompson/quoda/SplashScreenActivity$1;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/SplashScreenActivity$1;-><init>(Lcom/henrythompson/quoda/SplashScreenActivity;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v1, 0x5

    new-instance v0, Lcom/henrythompson/quoda/SplashScreenActivity$2;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/SplashScreenActivity$2;-><init>(Lcom/henrythompson/quoda/SplashScreenActivity;)V

    iput-object v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mDelayer:Ljava/lang/Runnable;

    nop

    return-void

    const/4 v1, 0x0
.end method

.method static synthetic access$002(Lcom/henrythompson/quoda/SplashScreenActivity;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x5

    iput-object p1, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mService:Lcom/android/vending/billing/IInAppBillingService;

    return-object p1

    const/4 v0, 0x2
.end method

.method static synthetic access$100(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/widget/TextView;
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mUpdater:Landroid/widget/TextView;

    return-object v0

    const/4 v0, 0x7
.end method

.method static synthetic access$200(Lcom/henrythompson/quoda/SplashScreenActivity;)V
    .locals 1

    const/4 v0, 0x3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->setPremiumCheckDone()V

    nop

    return-void

    const/4 v0, 0x6
.end method

.method static synthetic access$300(Lcom/henrythompson/quoda/SplashScreenActivity;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x4

    invoke-direct {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->loadEverything()V

    nop

    return-void

    const/4 v0, 0x0
.end method

.method static synthetic access$400(Lcom/henrythompson/quoda/SplashScreenActivity;)V
    .locals 1

    const/4 v0, 0x2

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->setMinimumTimePassed()V

    nop

    return-void

    const/4 v0, 0x3
.end method

.method static synthetic access$500(Lcom/henrythompson/quoda/SplashScreenActivity;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->proceedToEditorIfReady()V

    nop

    return-void

    const/4 v0, 0x1
.end method

.method static synthetic access$600(Lcom/henrythompson/quoda/SplashScreenActivity;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->setManagersLoaded()V

    nop

    return-void

    const/4 v0, 0x7
.end method

.method static synthetic access$700(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/os/Handler;
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mHandler:Landroid/os/Handler;

    return-object v0

    const/4 v1, 0x4
.end method

.method static synthetic access$800(Lcom/henrythompson/quoda/SplashScreenActivity;)V
    .locals 1

    const/4 v0, 0x6

    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->setErrorMessageDismissed()V

    nop

    return-void

    const/4 v0, 0x2
.end method

.method private checkForNewUpgradeSubscription()Z
    .locals 15

    const/4 v14, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x1

    iget-object v9, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v9, :cond_1

    const/4 v14, 0x1

    const-string v9, "Editor Activity"

    const-string v10, "Trying to check if upgrade purchased failed, as mService is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x6

    const-string v9, "(subs) Google Play Services object was null!"

    invoke-direct {p0, v9}, Lcom/henrythompson/quoda/SplashScreenActivity;->showPremiumCheckFailedDialog(Ljava/lang/String;)V

    const/4 v14, 0x2

    :cond_0
    :goto_0
    return v8

    const/4 v8, 0x3

    const/4 v14, 0x7

    :cond_1
    :try_start_0
    iget-object v9, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v10, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "subs"

    const/4 v13, 0x0

    invoke-interface {v9, v10, v11, v12, v13}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const/4 v14, 0x5

    const-string v9, "RESPONSE_CODE"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v14, 0x4

    if-nez v5, :cond_0

    const/4 v14, 0x0

    const-string v9, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v14, 0x3

    const-string v9, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v14, 0x2

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_0

    const/4 v14, 0x2

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v14, 0x1

    sget-object v10, Lcom/henrythompson/quoda/UpgradeActivity;->QUODA_UPGRADE_ALL_SKUS:[Ljava/lang/String;

    array-length v11, v10

    move v9, v8

    :goto_2
    if-ge v9, v11, :cond_3

    aget-object v7, v10, v9

    const/4 v14, 0x7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v14, 0x3

    const/4 v8, 0x1

    goto :goto_0

    const/4 v1, 0x3

    const/4 v14, 0x6

    :catch_0
    move-exception v0

    const/4 v14, 0x5

    const-string v9, "Editor Activity"

    const-string v10, "Trying to check if upgrade purchased failed, as the creating the bundle threw an exception"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(subs) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/henrythompson/quoda/SplashScreenActivity;->showPremiumCheckFailedDialog(Ljava/lang/String;)V

    goto :goto_0

    const/4 v0, 0x4

    const/4 v14, 0x2

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    const/4 v8, 0x4

    const/4 v14, 0x6

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v14, 0x3
.end method

.method private checkForOldUpgradePurchase()Z
    .locals 14

    const/4 v13, 0x2

    const/4 v7, 0x0

    const/4 v13, 0x3

    iget-object v8, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v8, :cond_1

    const/4 v13, 0x0

    const-string v8, "Editor Activity"

    const-string v9, "Trying to check if upgrade purchased failed, as mService is null"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    const-string v8, "(inapp) Google Play Services object was null!"

    invoke-direct {p0, v8}, Lcom/henrythompson/quoda/SplashScreenActivity;->showPremiumCheckFailedDialog(Ljava/lang/String;)V

    const/4 v13, 0x1

    :cond_0
    :goto_0
    return v7

    const/4 v7, 0x7

    const/4 v13, 0x0

    :cond_1
    :try_start_0
    iget-object v8, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v9, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "inapp"

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    const/4 v13, 0x3

    const-string v8, "RESPONSE_CODE"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/4 v13, 0x2

    if-nez v5, :cond_0

    const/4 v13, 0x2

    const-string v8, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v13, 0x5

    const-string v8, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    const/4 v13, 0x1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    const/4 v13, 0x0

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v13, 0x3

    const-string v8, "premium_upgrade"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v13, 0x3

    const/4 v7, 0x1

    goto :goto_0

    const/4 v13, 0x7

    const/4 v13, 0x5

    :catch_0
    move-exception v0

    const/4 v13, 0x0

    const-string v8, "Editor Activity"

    const-string v9, "Trying to check if upgrade purchased failed, as the creating the bundle threw an exception"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(inapp)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/henrythompson/quoda/SplashScreenActivity;->showPremiumCheckFailedDialog(Ljava/lang/String;)V

    goto :goto_0

    const/4 v1, 0x1

    const/4 v13, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    const/4 v13, 0x1
.end method

.method private declared-synchronized isReadyToProceed()Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mManagersLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mPremiumCheckDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mMinimumTimePassed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mErrorMessageShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    const/4 v1, 0x3

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    const/4 v1, 0x6

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadEverything()V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, p0}, Lcom/henrythompson/quoda/DataController;->attachListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v2, 0x5

    invoke-virtual {v0}, Lcom/henrythompson/quoda/DataController;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x1

    new-instance v1, Lcom/henrythompson/quoda/SplashScreenActivity$3;

    invoke-direct {v1, p0}, Lcom/henrythompson/quoda/SplashScreenActivity$3;-><init>(Lcom/henrythompson/quoda/SplashScreenActivity;)V

    invoke-static {v1}, Lcom/henrythompson/quoda/QuodaApplication;->performOnBackgroundThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    const/4 v2, 0x6

    :goto_0
    nop

    return-void

    const/4 v2, 0x6

    const/4 v2, 0x2

    :cond_0
    invoke-direct {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->setManagersLoaded()V

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->performActions()V

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->exitSplashScreen()V

    goto :goto_0

    const/4 v0, 0x1
.end method

.method private proceedToEditorIfReady()V
    .locals 2

    const/4 v1, 0x7

    const/4 v1, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->isReadyToProceed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    new-instance v0, Lcom/henrythompson/quoda/SplashScreenActivity$7;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/SplashScreenActivity$7;-><init>(Lcom/henrythompson/quoda/SplashScreenActivity;)V

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/SplashScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x5

    :cond_0
    nop

    return-void

    const/4 v1, 0x0
.end method

.method private declared-synchronized setErrorMessageDismissed()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mErrorMessageShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    monitor-exit p0

    nop

    return-void

    const/4 v1, 0x6

    const/4 v1, 0x0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setErrorMessageShowing()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mErrorMessageShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    monitor-exit p0

    nop

    return-void

    const/4 v0, 0x4

    const/4 v1, 0x0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setManagersLoaded()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mManagersLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    monitor-exit p0

    nop

    return-void

    const/4 v1, 0x5

    const/4 v1, 0x2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setMinimumTimePassed()V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mMinimumTimePassed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    monitor-exit p0

    nop

    return-void

    const/4 v1, 0x7

    const/4 v1, 0x2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setPremiumCheckDone()V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x7

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mPremiumCheckDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    monitor-exit p0

    nop

    return-void

    const/4 v0, 0x7

    const/4 v1, 0x5

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showPremiumCheckFailedDialog(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->setErrorMessageShowing()V

    const/4 v4, 0x7

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0088

    const/4 v4, 0x7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d018c

    new-instance v2, Lcom/henrythompson/quoda/SplashScreenActivity$8;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/SplashScreenActivity$8;-><init>(Lcom/henrythompson/quoda/SplashScreenActivity;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0087

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    const/4 v4, 0x6

    invoke-virtual {p0, v1, v2}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v4, 0x2

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v4, 0x5

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public checkIfPremium()V
    .locals 5

    const/4 v4, 0x3

    const/4 v4, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mService:Lcom/android/vending/billing/IInAppBillingService;

    if-nez v2, :cond_0

    const/4 v4, 0x4

    const-string v2, "SplashScreenActivity"

    const-string v3, "Trying to check if upgrade purchased failed, as mService is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const-string v2, "(top) Google Play Services object was null!"

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/SplashScreenActivity;->showPremiumCheckFailedDialog(Ljava/lang/String;)V

    const/4 v4, 0x7

    :goto_0
    nop

    return-void

    const/4 v4, 0x7

    const/4 v4, 0x0

    :cond_0
    invoke-direct {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->checkForNewUpgradeSubscription()Z

    move-result v0

    const/4 v4, 0x1

    invoke-static {v0}, Lcom/henrythompson/quoda/QuodaApplication;->setHasActivePremiumSubscription(Z)V

    const/4 v4, 0x2

    invoke-direct {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->checkForOldUpgradePurchase()Z

    move-result v1

    const/4 v4, 0x2

    invoke-static {v1}, Lcom/henrythompson/quoda/QuodaApplication;->setOldPremiumPurchased(Z)V

    goto :goto_0

    const/4 v2, 0x0
.end method

.method public exitSplashScreen()V
    .locals 4

    const/4 v3, 0x7

    const/4 v3, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/henrythompson/quoda/QuodaPreferences;->getEulaAccepted()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/henrythompson/quoda/EulaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    :goto_0
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/SplashScreenActivity;->startActivity(Landroid/content/Intent;)V

    const/4 v3, 0x5

    const v1, 0x7f01000f

    const v2, 0x7f01000c

    invoke-virtual {p0, v1, v2}, Lcom/henrythompson/quoda/SplashScreenActivity;->overridePendingTransition(II)V

    const/4 v3, 0x2

    nop

    return-void

    const/4 v3, 0x5

    const/4 v3, 0x4

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/henrythompson/quoda/EditorActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    const/4 v0, 0x4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x6

    const/4 v6, 0x6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v6, 0x3

    const v2, 0x7f0a0058

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/SplashScreenActivity;->setContentView(I)V

    const/4 v6, 0x4

    const v2, 0x7f080156

    invoke-virtual {p0, v2}, Lcom/henrythompson/quoda/SplashScreenActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mUpdater:Landroid/widget/TextView;

    const/4 v6, 0x1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v2, "com.android.vending"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v6, 0x5

    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/henrythompson/quoda/SplashScreenActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    const/4 v6, 0x6

    if-nez v1, :cond_0

    const/4 v6, 0x2

    const-string v2, "Unable to bind to billing service!"

    invoke-direct {p0, v2}, Lcom/henrythompson/quoda/SplashScreenActivity;->showPremiumCheckFailedDialog(Ljava/lang/String;)V

    const/4 v6, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->setPremiumCheckDone()V

    const/4 v6, 0x5

    invoke-direct {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->loadEverything()V

    const/4 v6, 0x3

    invoke-direct {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->proceedToEditorIfReady()V

    const/4 v6, 0x3

    :cond_0
    iget-object v2, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mDelayer:Ljava/lang/Runnable;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v6, 0x7

    nop

    return-void

    const/4 v6, 0x2
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x5

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v1, 0x1

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/henrythompson/quoda/DataController;->removeListener(Lcom/henrythompson/quoda/DataEventListener;)V

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/SplashScreenActivity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x5

    :cond_0
    nop

    return-void

    const/4 v1, 0x5
.end method

.method public onReceiveCommand(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    const/4 v0, 0x0

    return v0

    const/4 v1, 0x5
.end method

.method public onReceiveEvent(I[Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x2

    const/4 v1, 0x2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v1, 0x5

    new-instance v0, Lcom/henrythompson/quoda/SplashScreenActivity$4;

    invoke-direct {v0, p0, p2}, Lcom/henrythompson/quoda/SplashScreenActivity$4;-><init>(Lcom/henrythompson/quoda/SplashScreenActivity;[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/SplashScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    const/4 v1, 0x7

    :goto_0
    nop

    return-void

    const/4 v0, 0x5

    const/4 v1, 0x0

    :cond_0
    new-instance v0, Lcom/henrythompson/quoda/SplashScreenActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/henrythompson/quoda/SplashScreenActivity$5;-><init>(Lcom/henrythompson/quoda/SplashScreenActivity;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/henrythompson/quoda/SplashScreenActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    const/4 v1, 0x1
.end method

.method public performActions()V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v10, 0x4

    invoke-virtual {p0}, Lcom/henrythompson/quoda/SplashScreenActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v10, 0x7

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x1

    if-eqz v0, :cond_2

    const-string v6, "android.intent.action.EDIT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v10, 0x7

    :cond_0
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x5

    invoke-static {}, Lcom/henrythompson/quoda/QuodaPreferences;->getInstance()Lcom/henrythompson/quoda/QuodaPreferences;

    move-result-object v6

    invoke-virtual {v6}, Lcom/henrythompson/quoda/QuodaPreferences;->getEncodingOpen()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x0

    iget-object v6, p0, Lcom/henrythompson/quoda/SplashScreenActivity;->mUpdater:Landroid/widget/TextView;

    const v7, 0x7f0d018f

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v10, 0x1

    new-instance v1, Lcom/henrythompson/quoda/document/Document;

    invoke-direct {v1}, Lcom/henrythompson/quoda/document/Document;-><init>()V

    const/4 v10, 0x6

    new-instance v5, Lcom/henrythompson/quoda/filesystem/FileObject;

    const-string v6, "local"

    invoke-direct {v5, v9, v6}, Lcom/henrythompson/quoda/filesystem/FileObject;-><init>(ZLjava/lang/String;)V

    const/4 v10, 0x5

    invoke-virtual {v5, v3}, Lcom/henrythompson/quoda/filesystem/FileObject;->setFilepath(Ljava/lang/String;)V

    const/4 v10, 0x2

    new-instance v6, Lcom/henrythompson/quoda/SplashScreenActivity$6;

    invoke-direct {v6, p0}, Lcom/henrythompson/quoda/SplashScreenActivity$6;-><init>(Lcom/henrythompson/quoda/SplashScreenActivity;)V

    invoke-static {v1, v2, v5, v6}, Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices;->openFile(Lcom/henrythompson/quoda/document/Document;Ljava/lang/String;Lcom/henrythompson/quoda/filesystem/FileObject;Lcom/henrythompson/quoda/filesystem/FileOpenSaveServices$FilesystemOperationListener;)V

    const/4 v10, 0x4

    :cond_1
    :goto_0
    nop

    return-void

    const/4 v9, 0x3

    const/4 v10, 0x2

    :cond_2
    invoke-static {}, Lcom/henrythompson/quoda/document/DocumentsManager;->getInstance()Lcom/henrythompson/quoda/document/DocumentsManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/henrythompson/quoda/document/DocumentsManager;->getDocumentCount()I

    move-result v6

    if-gtz v6, :cond_1

    const/4 v10, 0x1

    const/4 v6, -0x1

    const-string v7, "Welcome.md"

    invoke-static {v6, v7, v9, p0}, Lcom/henrythompson/quoda/NewFileCreator;->createNewFile(ILjava/lang/String;ZLandroid/content/Context;)V

    goto :goto_0

    const/4 v7, 0x0
.end method
