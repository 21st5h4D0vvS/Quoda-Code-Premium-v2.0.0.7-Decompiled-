.class public Lcom/henrythompson/quoda/tmlanguage/BundlesManager;
.super Lcom/henrythompson/quoda/DataManager;


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/DataController;)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/henrythompson/quoda/DataManager;-><init>(Lcom/henrythompson/quoda/DataController;)V

    const/4 v0, 0x2

    nop

    return-void

    const/4 v0, 0x3
.end method

.method public static final getInstance()Lcom/henrythompson/quoda/tmlanguage/BundlesManager;
    .locals 3

    const/4 v2, 0x0

    const/4 v2, 0x7

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    const-class v1, Lcom/henrythompson/quoda/tmlanguage/BundlesManager;

    invoke-virtual {v0, v1}, Lcom/henrythompson/quoda/DataController;->getDataManager(Ljava/lang/Class;)Lcom/henrythompson/quoda/DataManager;

    move-result-object v0

    check-cast v0, Lcom/henrythompson/quoda/tmlanguage/BundlesManager;

    return-object v0

    const/4 v2, 0x3
.end method


# virtual methods
.method public getLanguage(Ljava/lang/String;)Lcom/henrythompson/quoda/tmlanguage/TmLanguage;
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x2

    const/4 v0, 0x0

    return-object v0

    const/4 v1, 0x5
.end method

.method public onLowMemory()V
    .locals 1

    const/4 v0, 0x1

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x7
.end method

.method public receiveEvent(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x5
.end method
