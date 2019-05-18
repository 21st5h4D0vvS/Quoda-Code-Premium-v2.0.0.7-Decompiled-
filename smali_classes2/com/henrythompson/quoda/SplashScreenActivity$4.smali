.class Lcom/henrythompson/quoda/SplashScreenActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/SplashScreenActivity;->onReceiveEvent(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

.field final synthetic val$data:[Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/SplashScreenActivity;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$4;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    iput-object p2, p0, Lcom/henrythompson/quoda/SplashScreenActivity$4;->val$data:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x1
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$4;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v6, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$4;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    const v2, 0x7f0d0077

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x6

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$4;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    const v2, 0x7f0d0076

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/henrythompson/quoda/SplashScreenActivity$4;->val$data:[Ljava/lang/Object;

    aget-object v4, v4, v5

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x5

    iget-object v1, p0, Lcom/henrythompson/quoda/SplashScreenActivity$4;->this$0:Lcom/henrythompson/quoda/SplashScreenActivity;

    const v2, 0x7f0d0075

    invoke-virtual {v1, v2}, Lcom/henrythompson/quoda/SplashScreenActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/henrythompson/quoda/SplashScreenActivity$4$1;

    invoke-direct {v2, p0}, Lcom/henrythompson/quoda/SplashScreenActivity$4$1;-><init>(Lcom/henrythompson/quoda/SplashScreenActivity$4;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x4

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    const/4 v6, 0x6

    nop

    return-void

    const/4 v6, 0x2
.end method
