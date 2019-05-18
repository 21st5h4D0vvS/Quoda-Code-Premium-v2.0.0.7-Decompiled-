.class public Lcom/henrythompson/quoda/QuodaApplication;
.super Landroid/support/multidex/MultiDexApplication;


# static fields
.field private static IS_OLD_PREMIUM:Z

.field private static IS_PREMIUM_SUBSCRIBER:Z

.field public static IS_TABLET:Z

.field public static IS_UPDATE:Z

.field public static IS_UPDATE_INFO_DIALOG_SHOWN:Z

.field private static mContext:Landroid/content/Context;

.field private static mDataController:Lcom/henrythompson/quoda/DataController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x7

    const/4 v0, 0x0

    const/4 v1, 0x2

    sput-boolean v0, Lcom/henrythompson/quoda/QuodaApplication;->IS_OLD_PREMIUM:Z

    const/4 v1, 0x7

    sput-boolean v0, Lcom/henrythompson/quoda/QuodaApplication;->IS_PREMIUM_SUBSCRIBER:Z

    const/4 v1, 0x6

    sput-boolean v0, Lcom/henrythompson/quoda/QuodaApplication;->IS_UPDATE:Z

    const/4 v1, 0x3

    sput-boolean v0, Lcom/henrythompson/quoda/QuodaApplication;->IS_UPDATE_INFO_DIALOG_SHOWN:Z

    const/4 v1, 0x1

    sput-boolean v0, Lcom/henrythompson/quoda/QuodaApplication;->IS_TABLET:Z

    nop

    return-void

    const/4 v1, 0x5
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/multidex/MultiDexApplication;-><init>()V

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public static getContext()Landroid/content/Context;
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x1

    sget-object v0, Lcom/henrythompson/quoda/QuodaApplication;->mContext:Landroid/content/Context;

    return-object v0

    const/4 v1, 0x0
.end method

.method public static getVersionCode()I
    .locals 6

    const/4 v5, 0x5

    const/4 v5, 0x2

    :try_start_0
    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v5, 0x0

    invoke-static {}, Lcom/henrythompson/quoda/QuodaApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const/4 v5, 0x2

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x3

    :goto_0
    return v2

    const/4 v1, 0x0

    const/4 v5, 0x6

    :catch_0
    move-exception v0

    const/4 v5, 0x6

    const-string v2, "QuodaApplication"

    const-string v3, "Failed to get version code from PackageInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x5

    const/4 v2, 0x2

    goto :goto_0

    const/4 v1, 0x7
.end method

.method public static hasActivePremiumSubscription()Z
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    sget-boolean v0, Lcom/henrythompson/quoda/QuodaApplication;->IS_PREMIUM_SUBSCRIBER:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v1, 0x5

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    const/4 v1, 0x7
.end method

.method public static isNewOrOldPremiumSubscriber()Z
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    sget-boolean v0, Lcom/henrythompson/quoda/QuodaApplication;->IS_OLD_PREMIUM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/henrythompson/quoda/QuodaApplication;->IS_PREMIUM_SUBSCRIBER:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    const/4 v1, 0x3

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    const/4 v0, 0x6
.end method

.method public static performOnBackgroundThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x7

    new-instance v0, Lcom/henrythompson/quoda/QuodaApplication$1;

    invoke-direct {v0, p0}, Lcom/henrythompson/quoda/QuodaApplication$1;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x3

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v1, 0x2

    return-object v0

    const/4 v0, 0x6
.end method

.method public static setHasActivePremiumSubscription(Z)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x6

    sput-boolean p0, Lcom/henrythompson/quoda/QuodaApplication;->IS_PREMIUM_SUBSCRIBER:Z

    const/4 v0, 0x4

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public static setOldPremiumPurchased(Z)V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x3

    sput-boolean p0, Lcom/henrythompson/quoda/QuodaApplication;->IS_OLD_PREMIUM:Z

    const/4 v0, 0x5

    nop

    return-void

    const/4 v0, 0x4
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x4

    sput-object p0, Lcom/henrythompson/quoda/QuodaApplication;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {p0}, Lcom/henrythompson/quoda/Directories;->initDirectories(Landroid/content/Context;)V

    const/4 v1, 0x4

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->initialize()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    sput-object v0, Lcom/henrythompson/quoda/QuodaApplication;->mDataController:Lcom/henrythompson/quoda/DataController;

    const/4 v1, 0x2

    invoke-super {p0}, Landroid/support/multidex/MultiDexApplication;->onCreate()V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v0, 0x2
.end method
