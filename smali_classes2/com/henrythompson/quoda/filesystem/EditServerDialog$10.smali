.class Lcom/henrythompson/quoda/filesystem/EditServerDialog$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/filesystem/EditServerDialog;->setButtonListeners(Landroid/widget/ScrollView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;


# direct methods
.method constructor <init>(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V
    .locals 1

    const/4 v0, 0x7

    const/4 v0, 0x6

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$10;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x3
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$10;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$100(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Lcom/henrythompson/quoda/filesystem/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$10;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$1400(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$10;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$1500(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)V

    const/4 v1, 0x5

    :goto_0
    nop

    return-void

    const/4 v0, 0x6

    const/4 v1, 0x4

    :cond_0
    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$10;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$200(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    const/4 v0, 0x0
.end method
