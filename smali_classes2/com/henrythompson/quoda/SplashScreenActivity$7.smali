.class Lcom/henrythompson/quoda/SplashScreenActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/SplashScreenActivity;->proceedToEditorIfReady()V
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

    const/4 v0, 0x3

    const/4 v0, 0x4

    iput-object p1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$7;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x2
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity$7;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/SplashScreenActivity;->access$700(Lcom/henrythompson/quoda/SplashScreenActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$7;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    iget-object v1, v1, Lcom/henrythompson/quoda/SplashScreenActivity;->mDelayer:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity$7;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/SplashScreenActivity;->performActions()V

    const/4 v2, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity$7;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/SplashScreenActivity;->exitSplashScreen()V

    const/4 v2, 0x3

    nop

    return-void

    const/4 v1, 0x5
.end method
