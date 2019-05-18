.class Lcom/henrythompson/quoda/SplashScreenActivity$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/SplashScreenActivity;->loadEverything()V
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

    const/4 v0, 0x4

    const/4 v0, 0x3

    iput-object p1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$3;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x3

    invoke-static {}, Lcom/henrythompson/quoda/DataController;->getInstance()Lcom/henrythompson/quoda/DataController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/henrythompson/quoda/DataController;->load()V

    const/4 v1, 0x7

    nop

    return-void

    const/4 v1, 0x6
.end method
