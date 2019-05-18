.class Lcom/henrythompson/quoda/UpgradeActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/UpgradeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/UpgradeActivity;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/UpgradeActivity;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/UpgradeActivity$1;->this$0:Lcom/henrythompson/quoda/UpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/UpgradeActivity$1;->this$0:Lcom/henrythompson/quoda/UpgradeActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/UpgradeActivity;->access$002(Lcom/henrythompson/quoda/UpgradeActivity;Z)Z

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/UpgradeActivity$1;->this$0:Lcom/henrythompson/quoda/UpgradeActivity;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/UpgradeActivity;->access$102(Lcom/henrythompson/quoda/UpgradeActivity;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/UpgradeActivity$1;->this$0:Lcom/henrythompson/quoda/UpgradeActivity;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/UpgradeActivity;->getUpgradeLocalPrice()V

    const/4 v2, 0x7

    nop

    return-void

    const/4 v1, 0x0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v2, 0x7

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/UpgradeActivity$1;->this$0:Lcom/henrythompson/quoda/UpgradeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/UpgradeActivity;->access$002(Lcom/henrythompson/quoda/UpgradeActivity;Z)Z

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/UpgradeActivity$1;->this$0:Lcom/henrythompson/quoda/UpgradeActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/UpgradeActivity;->access$102(Lcom/henrythompson/quoda/UpgradeActivity;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x6

    nop

    return-void

    const/4 v1, 0x3
.end method
