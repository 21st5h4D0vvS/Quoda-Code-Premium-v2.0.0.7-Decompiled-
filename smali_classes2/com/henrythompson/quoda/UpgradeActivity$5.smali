.class Lcom/henrythompson/quoda/UpgradeActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/UpgradeActivity;Landroid/app/Dialog;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/henrythompson/quoda/UpgradeActivity$5;->this$0:Lcom/henrythompson/quoda/UpgradeActivity;

    iput-object p2, p0, Lcom/henrythompson/quoda/UpgradeActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x7
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/UpgradeActivity$5;->this$0:Lcom/henrythompson/quoda/UpgradeActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/henrythompson/quoda/UpgradeActivity;->access$202(Lcom/henrythompson/quoda/UpgradeActivity;Z)Z

    const/4 v3, 0x2

    iget-object v1, p0, Lcom/henrythompson/quoda/UpgradeActivity$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v3, 0x5

    :try_start_0
    iget-object v1, p0, Lcom/henrythompson/quoda/UpgradeActivity$5;->this$0:Lcom/henrythompson/quoda/UpgradeActivity;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/UpgradeActivity;->upgradeToPremium()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x4

    iget-object v1, p0, Lcom/henrythompson/quoda/UpgradeActivity$5;->this$0:Lcom/henrythompson/quoda/UpgradeActivity;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/UpgradeActivity;->showUpgradeFailureDialog()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x6

    :cond_0
    :goto_0
    nop

    return-void

    const/4 v2, 0x7

    const/4 v3, 0x3

    :catch_0
    move-exception v0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/henrythompson/quoda/UpgradeActivity$5;->this$0:Lcom/henrythompson/quoda/UpgradeActivity;

    invoke-virtual {v1}, Lcom/henrythompson/quoda/UpgradeActivity;->showUpgradeFailureDialog()V

    goto :goto_0

    const/4 v2, 0x5
.end method
