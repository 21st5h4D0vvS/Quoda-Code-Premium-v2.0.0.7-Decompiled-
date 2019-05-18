.class public abstract Lcom/henrythompson/quoda/DataManager;
.super Ljava/lang/Object;


# instance fields
.field private mCoordinator:Lcom/henrythompson/quoda/DataController;

.field private mLoaded:Z


# direct methods
.method public constructor <init>(Lcom/henrythompson/quoda/DataController;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/henrythompson/quoda/DataManager;->mLoaded:Z

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data Manager Coordinator cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    const/4 v2, 0x2

    :cond_0
    iput-object p1, p0, Lcom/henrythompson/quoda/DataManager;->mCoordinator:Lcom/henrythompson/quoda/DataController;

    const/4 v2, 0x7

    nop

    return-void

    const/4 v2, 0x0
.end method


# virtual methods
.method public isLoaded()Z
    .locals 2

    const/4 v1, 0x3

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/henrythompson/quoda/DataManager;->mLoaded:Z

    return v0

    const/4 v0, 0x3
.end method

.method public load()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/henrythompson/quoda/DataManager;->mLoaded:Z

    const/4 v1, 0x0

    nop

    return-void

    const/4 v1, 0x6
.end method

.method public abstract onLowMemory()V
.end method

.method public onSetup()V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x6

    nop

    return-void

    const/4 v0, 0x2
.end method

.method public onUpgrade(II)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x7

    nop

    return-void

    const/4 v0, 0x6
.end method

.method public abstract receiveEvent(I[Ljava/lang/Object;)V
.end method

.method public sendEvent(I)V
    .locals 2

    const/4 v1, 0x4

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/DataManager;->mCoordinator:Lcom/henrythompson/quoda/DataController;

    invoke-virtual {v0, p1}, Lcom/henrythompson/quoda/DataController;->sendEvent(I)V

    const/4 v1, 0x4

    nop

    return-void

    const/4 v0, 0x0
.end method

.method public sendEvent(ILjava/lang/Object;)V
    .locals 2

    const/4 v1, 0x6

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/DataManager;->mCoordinator:Lcom/henrythompson/quoda/DataController;

    invoke-virtual {v0, p1, p2}, Lcom/henrythompson/quoda/DataController;->sendEvent(ILjava/lang/Object;)V

    const/4 v1, 0x6

    nop

    return-void

    const/4 v1, 0x1
.end method

.method public sendEvent(I[Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/DataManager;->mCoordinator:Lcom/henrythompson/quoda/DataController;

    invoke-virtual {v0, p1, p2}, Lcom/henrythompson/quoda/DataController;->sendEvent(I[Ljava/lang/Object;)V

    const/4 v1, 0x5

    nop

    return-void

    const/4 v1, 0x7
.end method

.method public setLoaded(Z)V
    .locals 1

    const/4 v0, 0x4

    const/4 v0, 0x2

    iput-boolean p1, p0, Lcom/henrythompson/quoda/DataManager;->mLoaded:Z

    const/4 v0, 0x0

    nop

    return-void

    const/4 v0, 0x5
.end method
