.class Lcom/henrythompson/quoda/SplashScreenActivity$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/SplashScreenActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/henrythompson/quoda/SplashScreenActivity$4;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/SplashScreenActivity$4;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$4$1;->this$1:Lcom/henrythompson/quoda/SplashScreenActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/henrythompson/quoda/SplashScreenActivity$4$1;->this$1:Lcom/henrythompson/quoda/SplashScreenActivity$4;

    iget-object v0, v0, Lcom/henrythompson/quoda/SplashScreenActivity$4;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/SplashScreenActivity;->finish()V

    const/4 v1, 0x1

    nop

    return-void

    const/4 v1, 0x7
.end method
