.class Lcom/henrythompson/quoda/SplashScreenActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/henrythompson/quoda/SplashScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/SplashScreenActivity;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/SplashScreenActivity;)V
    .locals 1

    const/4 v0, 0x5

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$1;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v3, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity$1;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$002(Lcom/henrythompson/quoda/SplashScreenActivity;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity$1;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$100(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$1;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    const v2, 0x7f0d0149

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity$1;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/SplashScreenActivity;->checkIfPremium()V

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity$1;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$200(Lcom/henrythompson/quoda/SplashScreenActivity;)V

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity$1;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$300(Lcom/henrythompson/quoda/SplashScreenActivity;)V

    const/4 v3, 0x7

    nop

    return-void

    const/4 v1, 0x3
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v2, 0x3

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity$1;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$002(Lcom/henrythompson/quoda/SplashScreenActivity;Lcom/android/vending/billing/IInAppBillingService;)Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x0

    nop

    return-void

    const/4 v2, 0x6
.end method
