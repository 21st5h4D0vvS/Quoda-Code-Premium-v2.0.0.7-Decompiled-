.class Lcom/henrythompson/quoda/filesystem/EditServerDialog$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/henrythompson/quoda/filesystem/EditServerDialog;->setLayout()Landroid/widget/ScrollView;
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

    const/4 v0, 0x5

    const/4 v0, 0x2

    iput-object p1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$2;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    return-void

    const/4 v0, 0x0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x2

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$2;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$300(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x6

    iget-object v0, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$2;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v0}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$300(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/henrythompson/quoda/filesystem/EditServerDialog$2;->this$0:Lcom/henrythompson/quoda/filesystem/EditServerDialog;

    invoke-static {v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog;->access$100(Lcom/henrythompson/quoda/filesystem/EditServerDialog;)Lcom/henrythompson/quoda/filesystem/Server;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/henrythompson/quoda/filesystem/EditServerDialog$EditServerListener;->onCancel(Lcom/henrythompson/quoda/filesystem/Server;)V

    const/4 v2, 0x7

    :cond_0
    nop

    return-void

    const/4 v2, 0x1
.end method
