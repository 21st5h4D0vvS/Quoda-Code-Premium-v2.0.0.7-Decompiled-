.class Lcom/henrythompson/quoda/UpgradeActivity$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/UpgradeActivity;->showDialog()V
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

    const/4 v0, 0x3

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/UpgradeActivity$7;->this$0:Lcom/henrythompson/quoda/UpgradeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x5
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x5

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/henrythompson/quoda/UpgradeActivity$7;->this$0:Lcom/henrythompson/quoda/UpgradeActivity;

    invoke-static {v0}, Lcom/henrythompson/quoda/UpgradeActivity;->access$200(Lcom/henrythompson/quoda/UpgradeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/henrythompson/quoda/UpgradeActivity$7;->this$0:Lcom/henrythompson/quoda/UpgradeActivity;

    invoke-virtual {v0}, Lcom/henrythompson/quoda/UpgradeActivity;->finish()V

    const/4 v1, 0x3

    :cond_0
    nop

    return-void

    const/4 v0, 0x1
.end method
